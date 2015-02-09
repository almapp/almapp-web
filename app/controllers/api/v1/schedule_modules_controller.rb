module Api
	module V1
		class ScheduleModulesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.schedule_modules
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
				@item.organization = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:item).permit(:initials, :organization_id, :day, :block, :start_hour, :start_minute, :end_hour, :end_minute)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:initials, :organization_id, :day, :block, :start_hour, :start_minute, :end_hour, :end_minute)
			end
		end
	end
end
