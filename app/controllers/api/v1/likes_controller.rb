module Api
	module V1
		class LikesController < BaseController
			before_action :authorize_user, only: [:create, :destroy, :update, :like, :dislike]
			before_action :set_and_validate_parent, only: [:index, :likes, :dislikes, :like, :dislike, :create]
			before_action :set_and_validate_item, only: [:show, :update, :destroy]

      def like
        @item = @parent.add_like_by(current_resource_owner)
        render 'api/v1/likes/show'
      end

      def dislike
        @item = @parent.add_dislike_by(current_resource_owner)
        render 'api/v1/likes/show'
      end

			def likes
				@items = @parent.likes.eager_load(:user)
				render :index
			end

			def dislikes
				@items = @parent.dislikes.eager_load(:user)
				render :index
			end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.likes.eager_load(:user)
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
				@item.likeable = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:like).permit(:user_id, :valuation, :likeable_type, :likeable_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:user_id, :valuation, :likeable_type, :likeable_id)
			end

		end
	end
end
