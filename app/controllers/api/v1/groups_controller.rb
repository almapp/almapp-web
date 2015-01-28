module Api
	module V1
		class GroupsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.groups
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:subscribers).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_organizational_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				if params[:faculty_id]
					@item.faculty << parent
				else
					@item.organizations << current_organization
				end
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:group).permit(:name, :email, :url, :facebook, :twitter, :information) # TODO complete params
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:name)
			end
		end
	end
end
