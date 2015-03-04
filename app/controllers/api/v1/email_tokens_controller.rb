module Api
  module V1
    class EmailTokensController < ApplicationController
      before_action :doorkeeper_authorize!
      before_action :current_resource_owner
      before_action :authorize_user!

      def create
        @item = EmailToken.where(user: current_resource_owner).first_or_initialize
        @item.assign_attributes(item_params)
        if @item.save!
          render 'api/v1/email_tokens/show'
        else
          render :json => {:error => @item.errors}.to_json, :status => 500
        end
      end

      def show
        @item = current_resource_owner.email_token
        render :json => {:error => "User has not setted up email token"}.to_json, :status => 404 unless @item.present?
      end

      private
      def item_params
        params.require(:email_token).permit(:provider, :access_token, :refresh_token, :code, :expires_at)
      end
    end
  end
end

