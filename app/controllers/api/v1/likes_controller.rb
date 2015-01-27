module Api
	module V1
		class LikesController < BaseController
			before_action :authenticate_user!, only: [:create, :destroy, :update]
			before_action :set_and_validate_parent, only: [:index, :likes, :dislikes, :create]
			before_action :set_and_validate_item, only: [:show, :update, :destroy]

			def likes
				@items = get_items
				render :index
			end

			def dislikes
				@items = @parent.dislikes
				render :index
			end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.likes
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
