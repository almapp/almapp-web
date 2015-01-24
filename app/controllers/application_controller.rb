class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::Helpers
  include ActionController::Caching

  SUBDOMAINS = Organization.pluck(:abbreviation).map(&:downcase)

  before_action :authenticate_api if Rails.env.production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :validate_subdomain

  def authenticate_api
    api_key = request.headers['X-Api-Key']

    unless api_key.present?
      render :json => {:error => 'Missing Api-key in X-Api-Key header'}.to_json, :status => 401
      return
    end

    api_key = ApiKey.find_by_key(api_key)
    unless api_key.present?
      render :json => {:error => 'Provided Api-key is not registered'}.to_json, :status => 401
      return
    end

    unless api_key.valid_key?
      render :json => {:error => 'Provided Api-key was invalidated'}.to_json, :status => 401
    end
  end

  def validate_subdomain
    render :json => {:error => 'Invalid Subdomain'}.to_json, :status => 404 unless request.subdomain == '' || valid_subdomain?(request.subdomain)
  end

  def current_organization
    current_organization ||= Organization.first # Organization.find_with_subdomain(request.subdomain)
  end

  def current_subdomain
    current_subdomain ||= request.subdomain
  end

  def get_subdomain_for_organization(organization)
    organization.abbreviation.downcase
  end

  def valid_subdomain?(subdomain)
    SUBDOMAINS.include? subdomain.downcase
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :organization_id
  end

end
