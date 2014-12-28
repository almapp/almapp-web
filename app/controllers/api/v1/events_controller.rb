module Api
	module V1
		class EventsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.events
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = resource_hierarchical_parent
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.host = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
				params.require(:event).permit(:title, :private, :information, :publish_date, :place_id, :from_date, :to_date, :facebook_url, :external_url, :host_id, :host_type)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:title, :private, :publish_date, :place_id, :from_date, :to_date, :host_type)
			end

		end
	end
end
