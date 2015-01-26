module Api
	module V1
		class CoursesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.courses
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.academic_unity = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:course).permit(:initials, :name, :credits, :availability, :academic_unity_id, :information, :capacity, :enrolled)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:initials, :name, :credits, :availability, :academic_unity_id)
			end

		end
	end
end
