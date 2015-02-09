module Api
	module V1
		class CommentsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.comments.eager_load(:user)
			end

			def get_item
				get_item_class.eager_load(:user).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.commentable = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:comment).permit(:user_id, :commentable_id, :commentable_type, :comment, :anonymous)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:user_id, :commentable_id, :commentable_type, :anonymous)
			end

		end
	end
end
