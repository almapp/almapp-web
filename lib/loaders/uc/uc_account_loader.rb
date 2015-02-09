class UCAccountLoader < AccountLoader
  require 'nokogiri'
  require 'open-uri'
  require 'uri'

  LOGIN_PATH = 'https://sso.uc.cl/cas/login'
  LOGOUT_PATH = 'https://sso.uc.cl/cas/logout'

  PROFILE_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10230&p_p_id=DatosPersonales_WAR_LPT022_DatosPersonales'
  CAREER_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10230&p_p_id=infopersona_WAR_LPT008_InfoPersonas_INSTANCE_R5fG'
  PHOTO_PATH = 'https://portal.uc.cl/LPT022_DatosPersonales/Foto'
  ACADEMIC_PATH = 'https://portal.uc.cl/c/portal/render_portlet?p_l_id=10706&p_p_id=ResumenAcademico_WAR_LPT014_ResumenAcademico_INSTANCE_6vY7'

  def initialize
    @uri = URI.parse(LOGIN_PATH)
    @http = Net::HTTP.new(@uri.host, @uri.port)
    @http.use_ssl = true
  end

  def prepare_user(user, password)
    request(user.username, password, PROFILE_PATH) do |resource_number, response|
      case resource_number
        when -1
          return false

        when 0
          puts response.code
          puts response.body
          prepare_profile(user, response.body)
      end
    end
  end

  def login(username, password)
    request = Net::HTTP::Get.new(@uri.request_uri)
    response = @http.request(request)

    lt = lt_token(response.body)
    cookie = session_cookie(response)

    data = "username=#{username}&password=#{password}&lt=#{lt}&execution=e1s1&_eventId=submit"
    headers = {
    'Cookie' => cookie,
    'Content-Type' => 'application/x-www-form-urlencoded'
    }

    response = @http.post(LOGIN_PATH, data, headers)
    return {session_cookie: cookie, response_cookie: response.response['set-cookie'] }
  end

  def logout(login_cookies)
    headers = {
    'Cookie' => login_cookies,
    'Content-Type' => 'application/x-www-form-urlencoded'
    }
    response = @http.get(LOGOUT_PATH, headers)
  end

  def request(username, password, *resources, &block)
    login_cookies = login(username, password)
    success = login_cookies[:response_cookie].present? && login_cookies[:response_cookie].size > 0

    if success
      headers = {
      'Cookie' => 'GUEST_LANGUAGE_ID=es_MX; COOKIE_SUPPORT=true; '.concat(login_cookies[:session_cookie]),
      'Host' => 'portal.uc.cl',
      'Accept-Language' => 'en-US,en;q=0.5',
      'Content-Type' => 'application/x-www-form-urlencoded',
      'Accept' => 'text/html, */*',
      'Referer' => 'https://portal.uc.cl/web/home-community/datos-personales?gpi=10225'
      }
      count = 0
      resources.each do |resource|
        uri = URI.parse(resource)
        base_url =  "#{uri.scheme}://#{uri.host}"

        resource_uri = URI.parse(base_url)
        resource_http = Net::HTTP.new(resource_uri.host, resource_uri.port)
        resource_http.use_ssl = true
        resource_http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        puts base_url
        puts resource_http
        puts headers

        case block.arity
          when 1
            yield(resource_http.get(resource, headers))

          when 2
            yield(count, resource_http.get(resource, headers))
        end
        count += 1
      end
      logout(login_cookies[:response_cookie])
      return true
    else
      yield(-1)
      return false
    end
  end

  def lt_token(html)
    doc = Nokogiri::HTML(html)
    doc.at('input[@name="lt"]')['value']
  end

  def session_cookie(response)
    response.response['set-cookie'].split('; ')[0]
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

