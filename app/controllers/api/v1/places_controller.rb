module Api
	module V1
		class PlacesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.places
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def set_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.area = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
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
