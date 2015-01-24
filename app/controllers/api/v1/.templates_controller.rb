module Api
	module V1
		class TemplatesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				# @parent.campuses
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def set_parent
				# @parent = Campus.find(params[:campus_id])
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent
				# @item.campus = @parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				# params.require(:item).permit(:attribute1, :attribute2) # TODO complete params
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				#params.permit(:attribute1, :attribute2)
			end

		end
	end
end
