module Api
	module V1
		class LikesController < BaseController
			before_action :authenticate_user!, only: [:create, :destroy, :update]
			before_action :set_parent, only: [:index, :likes, :dislikes, :create]
			before_action :set_resource, only: [:show, :update, :destroy]

			def likes
				@resources = get_resources
				render :index
			end

			def dislikes
				@resources = @parent.dislikes
				render :index
			end

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.likes
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = resource_hierarchical_parent
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.likeable = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
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
