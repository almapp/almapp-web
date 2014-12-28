module Api
	module V1
		class CareersController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.careers
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
				@resource.academic_unity = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:career).permit(:name, :url, :curriculum_url, :academic_unity_id, :information)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:name, :academic_unity_id)
			end

		end
	end
end
