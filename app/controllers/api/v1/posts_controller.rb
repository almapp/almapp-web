module Api
	module V1
		class PostsController < BaseController

			before_action :authorize_user!, only: [:create, :destroy, :update]
			before_action :set_and_validate_parent, only: [:index, :published_posts, :create]
			before_action :set_and_validate_items, only: [:index, :published_posts, :create]
			before_action :set_and_validate_item, only: [:show, :update, :destroy]

      def get_found_items(query, limit)
        get_items.search(query, boost_by: {comments_count: {factor: COMMENT_BOOST},
                                    likes_count: {factor: LIKE_BOOST},
                                    dislikes_count: {factor: DISLIKE_BOOST}},
                         limit: limit)
      end

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
				get_item_class.eager_load(:user, :localization, :event).find_by_id(params[:id])
			end

			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
        @item.user = current_resource_owner
				@item.target = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:post).permit(:entity_id, :entity_type,
                                     :target_id, :target_type,
                                     :content,
                                     :notify, :hidden,
                                     :place_id, :event_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:user_id, :commentable_id, :commentable_type, :hidden)
			end

		end
	end
end
