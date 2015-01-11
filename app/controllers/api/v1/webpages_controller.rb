module Api
	module V1
		class WebpagesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.webpages
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = current_organization
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.organization = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:webpage).permit(:identifier, :name, :owner, :organization_id, :information, :available, :secure_protocol, :requires_login, :should_open_in_browser, :home_url, :base_url)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:identifier, :name)
			end

		end
	end
end
