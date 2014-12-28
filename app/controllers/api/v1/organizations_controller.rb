module Api
	module V1
		class OrganizationsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				# @parent.campuses
				# Or
				Organization.all
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				# @parent = Campus.find(params[:campus_id])
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				# @resource.campus = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:organization).permit(:id, :name, :short_name, :abbreviation, :information, :url, :facebook, :twitter, :place_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:id, :name, :short_name, :abbreviation, :place_id)
			end

		end
	end
end
