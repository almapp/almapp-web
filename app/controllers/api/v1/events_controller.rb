module Api
	module V1
		class EventsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.events.eager_load(:localization)
			end

			def get_item
				get_item_class.eager_load(:user, :localization, :participants).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.host = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
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
