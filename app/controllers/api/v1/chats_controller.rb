module Api
	module V1
		class ChatsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				Chat.all
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:users, :chat_messages).find(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				nil
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				# @item.course = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:item).permit()
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:id, :title, :available)
			end

		end
	end
end
