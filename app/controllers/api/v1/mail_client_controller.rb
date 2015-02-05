module Api
  module V1
    class MailClientController < ApplicationController

      def create
        token = Token.new(params[:token])
        token.user = current_resource_owner
        if token.save!
          render :json => {:success => "saved token"}.to_json, :status => 200
        else
          render :json => {:error => token.errors}.to_json, :status => 500
        end
      end

      def current_resource_owner
        # User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
        User.first
      end

      private
      def mail_params
        params.require(:token).permit(:access_token, :refresh_token, :expires_in)
      end

    end
  end
end

