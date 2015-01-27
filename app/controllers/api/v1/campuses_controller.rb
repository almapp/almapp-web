module Api
	module V1
		class CampusesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.campuses.includes(:localization)
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:localization, :organization).find(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				current_organization
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.organization = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:campus).permit(:name, :abbreviation, :organization_id, :address, :url, :facebook, :twitter, :phone, :email, :description, :place_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:name, :abbreviation, :organization_id, :place_id)
			end
		end
	end
end
