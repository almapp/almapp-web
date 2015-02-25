module Api
	module V1
		class MeController < ApplicationController
      include ControllerHelpers::V1
			# prepend_before_action :authenticate_user!

      before_action :doorkeeper_authorize!
      before_action :current_resource_owner
      before_action :authorize_user!

			def show
        @item = get_item
				render 'api/v1/users/show'
			end

			def sections
        year = params[:year]
        year ||= current_year

        period = params[:period]
        period ||= current_period

				@items = current_resource_owner.sections_for_period(year, period)
				render 'api/v1/sections/index'
      end

      def courses
        year = params[:year]
        year ||= current_year

        period = params[:period]
        period ||= current_period

        @items = current_resource_owner.courses_for_period(year, period)
        render 'api/v1/courses/index'
      end

			def get_item
        current_resource_owner
			end

			def get_item_name
				@item_name ||= 'user'
			end
		end
	end
end
