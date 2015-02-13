module Api
	module V1
		class DevicesController < BaseController
      before_action :authorize_user

      def create
        @item = Device.where(item_params).first_or_initialize
        @item.user = current_resource_owner
        if @item.save
          render json: {status: 'added device successfully'}.to_json, status: :created
        else
          render json: @item.errors, status: :unprocessable_entity
        end
      end

      protected
      def item_params
        params.require(:device).permit(:platform, :token)
      end

		end
	end
end
