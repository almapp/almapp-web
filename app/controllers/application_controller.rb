class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::Helpers
  include ActionController::Caching

  SUBDOMAINS = Organization.pluck(:abbreviation).map(&:downcase)

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :validate_subdomain

  def validate_subdomain
    render :json => {:error => 'Invalid Subdomain'}.to_json, :status => 404 unless request.subdomain == '' || valid_subdomain?(request.subdomain)
  end

  def current_organization
    current_organization ||= Organization.find_with_subdomain(request.subdomain)
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
