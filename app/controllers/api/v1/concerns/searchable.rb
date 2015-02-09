module Api
  module V1
    module Concerns
    module Searchable
      extend ActiveSupport::Concern
      MAX_ITEMS = 10

      def search
        query = params[:q]

        unless query.present?
          render :json => [].to_json unless query.present?
          return
        end

        @items = get_found_items(query)
        render "api/v1/#{self.controller_name.downcase}/index"
      end

      def get_found_items(query, limit = MAX_ITEMS)

      end
    end
  end
end
end