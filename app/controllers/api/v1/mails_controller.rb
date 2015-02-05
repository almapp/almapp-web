module Api
  module V1
    class MailsController < ApplicationController
      before_action 'set_token'
      before_action 'set_client'

      def set_token
        @token = current_resource_owner.token
        render :json => {:error => 'token not found'}.to_json, :status => 401 unless @token.present?
      end

      def set_client
        @client = Google::APIClient.new  # "Create a new Google API client"
        @client.authorization.access_token = @token.valid_access_token  # "Here's my access token"
        @service = @client.discovered_api('gmail') # "Pull data from GMail"
      end


      def index
        params = {
          'userId' => 'me',
          'labelIds' => ['INBOX'],
          'maxResults' => '20'
          #'id' => '14b52e3f0f448eae'
        }

        result = @client.execute(
          api_method: @service.users.threads.list,
          parameters: params,
          headers: {'Content-Type' => 'application/json'}
        )

        response = "["
        JSON.parse(result.body)['threads'].each do |thread|
          params = {
            'userId' => 'me',
            'labelIds' => ['INBOX'],
            'id' => thread['id'].to_s
          }

          thread_result = @client.execute(
            api_method: @service.users.threads.get,
            parameters: params,
            headers: {'Content-Type' => 'application/json'}
          )
          response <<  "," unless response.size == 1
          response << thread_result.body
        end

        render :json => response + "]"
      end

      def show

      end

      private


      def ewewewe(method, params)
        JSON.parse(request(method, params))
      end

      def ewewew(method, params)
        token = current_resource_owner.token

        client = Google::APIClient.new  # "Create a new Google API client"
        client.authorization.access_token = token.access_token  # "Here's my access token"
        service = client.discovered_api('gmail') # "Pull data from GMail"

        result = client.execute(
                       api_method: method,
                       parameters: params,
                       headers: {'Content-Type' => 'application/json'}
        )
        result.body
      end

      def current_resource_owner
        # User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
        User.first
      end

    end
  end
end
