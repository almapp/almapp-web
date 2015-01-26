module Api
	module V1
		class MeController < BaseController
			prepend_before_action :authenticate_user!

			def show
				render 'api/v1/users/show'
			end

			def sections
				@items = current_user.sections
				render 'api/v1/sections/index'
			end

			def get_item
				current_user
			end

			def get_item_name
				@item_name ||= 'user'
			end
		end
	end
end
