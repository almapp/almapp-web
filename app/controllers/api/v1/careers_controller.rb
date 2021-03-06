module Api
	module V1
		class CareersController < BaseController

      def get_found_items(query, limit)
        get_items.search(query,
                         fields: [{'name^10' => :text_middle}],
                         boost_by: {comments_count: {factor: COMMENT_BOOST},
                                    likes_count: {factor: LIKE_BOOST},
                                    dislikes_count: {factor: DISLIKE_BOOST}},
                         limit: limit)
      end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.careers
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:academic_unity).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_organizational_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.academic_unity = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:career).permit(:name, :url, :academic_unity_id, :information)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:name, :academic_unity_id)
			end

		end
	end
end
