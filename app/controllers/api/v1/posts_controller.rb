module Api
	module V1
		class PostsController < BaseController
			before_action :authenticate_user!, only: [:create, :destroy, :update]
			before_action :set_and_validate_parent, only: [:index, :published_posts, :create]
			before_action :set_and_validate_items, only: [:index, :published_posts, :create]
			before_action :set_and_validate_item, only: [:show, :update, :destroy]

			def published_posts
				@items = @parent.published_posts.eager_load(:user, :localization, :event)
				render :index
			end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.posts.eager_load(:user, :localization, :event)
			end

			def get_item
				get_item_class.eager_load(:user, :localization, :event).find(params[:id])
			end

			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.target = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:comment).permit(:user_id, :commentable_id, :commentable_type, :comment, :hidden)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:user_id, :commentable_id, :commentable_type, :hidden)
			end

		end
	end
end
