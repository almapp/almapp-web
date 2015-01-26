module Api
	module V1
		class AcademicUnitiesController < BaseController

			# Return an array to display in the index view.
			# @return Relation array
			def get_items
				@parent.academic_unities
				# Or
				# Campus.all
			end

			# Set @parent var to the respective parent of the item, see the routes.
			# Can be null.
			def get_parent
				item_organizational_parent
			end

			# Set a parent to the item if needed. This is called before saving on create.
			def set_item_parent(parent)
				@item.faculty = parent
			end

			# Set strong params for the item. Remember to change :item for the actual name
			def item_params
				params.require(:academic_unity).permit(:id, :short_name, :name, :faculty_id, :url, :email, :address, :information, :facebook, :twitter, :place_id)
			end

			# Custom params to filter
			def query_params
				# allowing us to filter by this
				params.permit(:id, :short_name, :name, :faculty_id, :place_id)
			end
		end
	end
end

