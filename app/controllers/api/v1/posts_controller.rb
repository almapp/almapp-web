module Api
	module V1
		class PostsController < BaseController
			before_action :authenticate_user!, only: [:create, :destroy, :update]
			before_action :set_parent, only: [:index, :published_posts, :create]
			before_action :set_resource, only: [:show, :update, :destroy]

			def published_posts
				@resources = @parent.published_posts
				render :index
			end

			# Return an array to display in the index view.
			# @return Relation array
			def get_resources
				@parent.posts
			end

			# Set @parent var to the respective parent of the resource, see the routes.
			# Can be null.
			def set_parent
				@parent = resource_hierarchical_parent
			end

			# Set a parent to the resource if needed. This is called before saving on create.
			def set_resource_parent
				@resource.commentable = @parent
			end

			# Set strong params for the resource. Remember to change :resource for the actual name
			def resource_params
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
