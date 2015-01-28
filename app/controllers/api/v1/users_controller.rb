module Api
	module V1
		class UsersController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.users.eager_load(:careers)
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:careers, :organization).find(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def set_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
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
