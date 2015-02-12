class UCAccountLoader < AccountLoader
  require 'nokogiri'
  require 'open-uri'
  require 'uri'
  require 'certified'

  LOGIN_PATH = 'https://sso.uc.cl/cas/login?service=https://portal.uc.cl/c/portal/login'
  LOGOUT_PATH = 'https://sso.uc.cl/cas/logout'

  PROFILE_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10230&p_p_id=DatosPersonales_WAR_LPT022_DatosPersonales'
  CAREER_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10230&p_p_id=infopersona_WAR_LPT008_InfoPersonas_INSTANCE_R5fG'
  PHOTO_PATH = 'https://portal.uc.cl/LPT022_DatosPersonales/Foto'
  ACADEMIC_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10706&p_p_id=ResumenAcademico_WAR_LPT014_ResumenAcademico_INSTANCE_6vY7'

  def cas_login(username, password)
    uri = URI.parse(LOGIN_PATH)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

    doc = Nokogiri::HTML(response.body)
    lt = doc.at('input[@name="lt"]')['value']
    execution = doc.at('input[@name="execution"]')['value']
    eventId = doc.at('input[@name="_eventId"]')['value']

    cookie = response.response['set-cookie'].split('; ')[0]

    data = "username=#{username}&password=#{password}&lt=#{lt}&execution=#{execution}&_eventId=#{eventId}"
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

  def prepare_user(username, password)

    cas_logged_response = cas_login(username, password)
    cas_logged_redirect = cas_logged_response.response['Location']

    portal_logged_response = portal_login(cas_logged_redirect)
    portal_cookie = portal_logged_response['Set-Cookie'].split(';')[0]
    portal_redirect = portal_logged_response['Location']

    final_response = final_login(portal_redirect, portal_cookie)
    final_cookie = final_response['Set-Cookie']

    uri = URI.parse('https://portal.uc.cl')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new('/c/portal/render_portlet?p_l_id=10706&p_p_id=horarioClases_WAR_LPT002_HorarioClases_INSTANCE_UuK1&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&p_p_col_id=column-1&p_p_col_pos=1&p_p_col_count=5&currentURL=%2Fweb%2Fhome-community%2Finformacion-academica')
    request['Cookie'] = portal_cookie
    http.request(request)
  end

  def logout(login_cookies)
    headers = {
    'Cookie' => login_cookies,
    'Content-Type' => 'application/x-www-form-urlencoded'
    }
    response = @http.get(LOGOUT_PATH, headers)
  end

  def prepare_profile(user, profile_html)
    doc = Nokogiri::HTML(profile_html)
    tr = doc.xpath('//tbody/tr')
    tr.xpath("//td[@class='dp-imagen']").remove
    tr.each do |f|
      key = f.xpath('th').first.text
      value = f.xpath('td').first.text
      puts key
      puts value
      if key.present? && value.present?
        value = value.titleize
        case key
          when 'Nombre'
            user.name = value
          when 'Sexo'
            user.male = (value == MASCULINO)
          when 'País de Origen'
            user.country = value
          else
            puts key
        end
      end
    end
    puts user
    return user
  end

end

