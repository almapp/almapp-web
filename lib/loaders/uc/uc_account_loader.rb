class UCAccountLoader < AccountLoader
  require 'nokogiri'
  require 'open-uri'
  require 'uri'
  require 'certified'

  LOGIN_PATH = 'https://sso.uc.cl/cas/login?service=https://portal.uc.cl/c/portal/login'
  LOGOUT_PATH = 'https://sso.uc.cl/cas/logout'

  SCHEDULE_PATH = '/c/portal/render_portlet?p_l_id=10706&p_p_id=horarioClases_WAR_LPT002_HorarioClases_INSTANCE_UuK1'
  PROFILE_PATH = '/c/portal/render_portlet?p_l_id=10230&p_p_id=DatosPersonales_WAR_LPT022_DatosPersonales'
  CAREER_PATH = '/c/portal/render_portlet?p_l_id=10230&p_p_id=infopersona_WAR_LPT008_InfoPersonas_INSTANCE_R5fG'
  PHOTO_PATH = '/LPT022_DatosPersonales/Foto'
  ACADEMIC_PATH = '/c/portal/render_portlet?p_l_id=10706&p_p_id=ResumenAcademico_WAR_LPT014_ResumenAcademico_INSTANCE_6vY7'

  def cas_login(username, password)
    uri = URI.parse(LOGIN_PATH)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

    doc = Nokogiri::HTML(response.body)
    lt = doc.at('input[@name="lt"]')['value']
    execution = doc.at('input[@name="execution"]')['value']
    event_id = doc.at('input[@name="_eventId"]')['value']

    cookie = response.response['set-cookie'].split('; ')[0]

    data = "username=#{username}&password=#{password}&lt=#{lt}&execution=#{execution}&_eventId=#{event_id}"
    headers = {
    'Content-Type' => 'application/x-www-form-urlencoded',
    'Cookie' => cookie,
    'Host' => 'sso.uc.cl',
    'Origin' => 'https://sso.uc.cl',
    'Pragma' => 'no-cache',
    'Referer' => 'https://sso.uc.cl/cas/login'
    }

    http.post(LOGIN_PATH, data, headers) #post_response_cookie = post_response.response['Set-Cookie'] # Convert
  end

  def portal_login(login_redirect_url)
    uri = URI.parse(login_redirect_url) # https://portal.uc.cl/c/portal/login?ticket=ST-30001-1vAmqXnuadzeh4ZtzJd4-cas
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri)
    request['Host'] = 'portal.uc.cl'
    request['Referer'] = 'https://sso.uc.cl/cas/login?service=https://portal.uc.cl/c/portal/login'

    http.request(request)
  end

  def final_login(portal_location, exchange_cookie)
    uri = URI.parse(portal_location) # https://portal.uc.cl/web/home-community;jsessionid=6FDF3685D2A4DD5A7D4500495EE39697
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri)
    request['Cookie'] = exchange_cookie
    request['Host'] = 'portal.uc.cl'
    request['Referer'] = 'https://sso.uc.cl/cas/login?service=https://portal.uc.cl/c/portal/login'

    http.request(request)
  end

  def prepare_user(user, password)
    cas_logged_response = cas_login(user.username, password)
    cas_logged_redirect = cas_logged_response.response['Location']
    return nil unless cas_logged_redirect.present?

    portal_logged_response = portal_login(cas_logged_redirect)
    @portal_cookie = portal_logged_response['Set-Cookie'].split(';')[0]
    # portal_redirect = portal_logged_response['Location']

    # final_response = final_login(portal_redirect, @portal_cookie)
    # final_cookie = final_response['Set-Cookie']

    uri = URI.parse('https://portal.uc.cl')
    @http = Net::HTTP.new(uri.host, uri.port)
    @http.use_ssl = true
    @http.verify_mode = OpenSSL::SSL::VERIFY_NONE


    profile_data = get_profile
    user.assign_attributes(profile_data)
    if user.save!

      #sections = get_sections

      #sections.each do |section|
      #  user.sections << section unless user.sections.include?(section)
      #end

      sectionsuser.import (get_sections - user.sections).map { |section| sectionsuser.new(user: user, section: section) }

      careers_data = get_career
      careers_data.each do |career_data|
        career = career.where(name: career_data[:career]).first_or_create
        enroll = enrolledcareer.where(user: user, career: career).first_or_initialize
        enroll.curriculum = career_data[:curriculum]
        enroll.student_id = career_data[:student_id]
        enroll.save!
      end

      profile_pic = get_profile_pic
      user.avatar = profile_pic

      profile_pic.close
      profile_pic.unlink

      (user.save!) ? user : nil
    end
  end

  def request(path)
    request = Net::HTTP::Get.new(path)
    request['Cookie'] = @portal_cookie
    @http.request(request)
  end

  def get_profile_pic
    response = request(PHOTO_PATH)

    tempfile = Tempfile.new([SecureRandom.hex.to_s, '.jpeg'])
    File.open(tempfile.path,'wb') do |f|
      f.write response.body
    end
    tempfile
  end

  def get_career
    response = request(CAREER_PATH)
    doc = Nokogiri::HTML(response.body)

    table = doc.xpath('//table[@class="IP-tabla"]/tbody/tr')
    table = table[2..table.size]
    table.map do |career_data|
      data = career_data.xpath('//td[@class="IP-alumno-td"]')

      career_and_curriculum = data[1].text

      {
      student_id: data[0].text,
      curriculum: career_and_curriculum.split(' - ')[0].delete(' '),
      career: career_and_curriculum.split(' - ')[1],
      ingress_year: data[2].text,
      ingress_period: data[3].text
      }
    end
  end

  def get_profile
    response = request(PROFILE_PATH)
    doc = Nokogiri::HTML(response.body)

    data = {}

    tr = doc.xpath('//tbody/tr')
    tr.xpath("//td[@class='dp-imagen']").remove
    tr.each do |f|
      key = f.xpath('th').first.text
      value = f.xpath('td').first.text

      if key.present? && value.present?
        value = value.titleize
        case key
          when 'Nombre'
            data.merge!(name: value)
          when 'Sexo'
            data.merge!(male: (value.casecmp("MASCULINO") == 0))
          when 'País de Origen'
            data.merge!(country: value)
        end
      end
    end
    return data
  end

  def get_sections
    response = request(SCHEDULE_PATH)
    doc = Nokogiri::HTML(response.body)

    identifiers = doc.xpath('//td[@class="hc-uportal-td2 hc-td"]').map { |node| node.text }
    Section.where(identifier: identifiers, year: current_year, period: current_period)


    # identifiers = doc.xpath('//td[@class="hc-uportal-td2 hc-td"]').inject([]) do |result, node|
    #   section = Section.find_by_identifier(node.text)
    #   result << section if section.present?
    #   result
    # end
  end

  def logout(login_cookies)
    headers = {
    'Cookie' => login_cookies,
    'Content-Type' => 'application/x-www-form-urlencoded'
    }
    response = @http.get(LOGOUT_PATH, headers)
  end

end

