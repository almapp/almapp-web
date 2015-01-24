module Api
	module V1
		class ScheduleItemsController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.schedule_items
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def set_parent
				@parent = item_hierarchical_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent
				@item.section = @parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:item).permit(:schedule_module_id, :section_id, :class_type, :place_name, :place_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:schedule_module_id, :section_id, :class_type, :place_name, :place_id)
			end
		end
	end
end
