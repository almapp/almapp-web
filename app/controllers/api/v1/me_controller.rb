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

			def set_item
				@item = current_user
				render :json => {:error => "#{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless @item.present?
			end

			def get_item_name
				@item_name ||= 'user'
			end
		end
	end
end
