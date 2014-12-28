module Api
	module V1
		class FacultiesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.faculties
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = resource_organizational_parent
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.campus = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:faculty).permit(:abbreviation, :short_name, :name, :address, :phone, :email, :url, :facebook, :twitter, :place_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:abbreviation, :short_name, :name, :address, :place_id)
			end

		end
	end
end
