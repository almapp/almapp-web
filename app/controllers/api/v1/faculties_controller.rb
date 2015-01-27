module Api
	module V1
		class FacultiesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.faculties.eager_load(:localization)
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:localization, :campus).find(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_organizational_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.campus = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
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
