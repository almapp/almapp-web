module Api
	module V1
		class PlacesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.places
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = resource_hierarchical_parent
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.area = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:event).permit(:identifier, :name, :service, :area_id, :area_type, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:identifier, :name, :service, :area_id, :area_type, :floor)
			end
		end
	end
end
