module Api
	module V1
		class WebpagesController < BaseController

      def get_found_items(query, limit)
        get_items.search(query)
      end

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.webpages
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:organization).find(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def set_parent
				current_organization
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.organization = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:webpage).permit(:identifier, :name, :owner, :organization_id, :page_type, :information, :available, :secure_protocol, :requires_login, :should_open_in_browser, :home_url, :base_url)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:identifier, :name, :page_type)
			end

		end
	end
end
