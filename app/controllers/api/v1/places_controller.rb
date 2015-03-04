module Api
	module V1
		class PlacesController < BaseController

      def get_found_items(query, limit)
        get_items.search(query,
                         fields: [{'identifier^10' => :word_start},
                                  {'name^8' => :text_middle}],
                         boost_by: {comments_count: {factor: COMMENT_BOOST},
                                    likes_count: {factor: LIKE_BOOST},
                                    dislikes_count: {factor: DISLIKE_BOOST}},
                         limit: limit)
      end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.places.includes(:area)
			end

			def get_item
				get_item_class.eager_load(:events).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.area = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:event).permit(:identifier, :name, :service, :area_id, :area_type, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:id, :identifier, :name, :service, :area_id, :area_type, :floor)
			end
		end
	end
end
