class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::Helpers
  include ActionController::Caching

  respond_to :json

  SUBDOMAINS = Organization.pluck(:abbreviation).map(&:downcase)

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :validate_subdomain


  def doorkeeper_unauthorized_render_options
    {json: '{"status": "failure", "message":"401 Unauthorized"}'}
  end

  def current_resource_owner
    @current_resource_owner ||= User.find_by_id(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def authorize_user!
    render :json => {:error => "Must authenticate as user"}.to_json, :status => 401 unless current_resource_owner.present?
  end




  def validate_subdomain
    if params[:organization] && !valid_organization?(params[:organization])
      render :json => {:error => 'Invalid organization'}.to_json, :status => 404
    end
  end

  def current_organization
    slug = params[:organization]
    @current_organization ||= Organization.where("lower(abbreviation) = ?", slug.downcase).first if (slug.present? && slug.size != 0)
  end

  def valid_organization?(abbreviation)
    SUBDOMAINS.include? abbreviation.downcase
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :organization_id
  end

end
