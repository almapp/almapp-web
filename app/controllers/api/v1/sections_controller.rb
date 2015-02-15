module Api
	module V1
		class SectionsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.sections.eager_load(:course, :schedule_items, :teachers, :assistants)
				# Or
				# Campus.all
			end

			def get_item
				get_item_class.eager_load(:course, :schedule_items, :teachers, :assistants).find_by_id(params[:id])
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.course = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:item).permit(:course_id, :number, :period, :year)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:course_id, :number, :period, :year)
			end

		end
	end
end
