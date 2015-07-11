module Api
  module V1
    class BaseController < ApplicationController
      include ControllerHelpers::V1

      MAX_ITEMS = 5
      LIKE_BOOST = 5
      DISLIKE_BOOST = 3
      COMMENT_BOOST = 10

      # before_action :doorkeeper_authorize!
      before_action :current_resource_owner
      before_action :authorize_user! , only: [:create, :update, :destroy]
      before_action :set_parent, only: [:index, :create, :search]
      before_action :set_items!, only: [:index]
      before_action :set_item!, only: [:show, :update, :destroy]


      #=================
      #==== Actions ====
      #=================

      def index
        @items = get_items.where(query_params)
      end

      # GET /camps/1
      # GET /camps/1.json
      def show
      end

      # POST /camps
      # POST /camps.json
      def create
        @item = get_item_class.new(item_params)
        set_item_parent(@parent)
        if @item.save
          render :show, status: :created
        else
          render json: @item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /camps/1
      # PATCH/PUT /camps/1.json
      def update
        if @item.update(item_params)
          render :show, status: :ok
        else
          render json: @item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /camps/1
      # DELETE /camps/1.json
      def destroy
        @item.destroy
        head :no_content
      end

      def search
        query = params[:q]

        unless query.present?
          render :json => [].to_json unless query.present?
          return
        end

        @items = get_found_items(query, MAX_ITEMS)
        render "api/v1/#{self.controller_name.downcase}/index"
      end

      #=================
      #==== Helpers ====
      #=================

      def set_item
        @item ||= get_item
      end

      def set_item!
        render :json => {:error => "#{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless set_item.present?
      end

      def set_parent
        @parent ||= get_parent
      end

      def set_parent!
        render :json => {:error => "Parent for #{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless set_parent.present?
      end

      def set_items!
        begin
          @items = get_items
        rescue
          render :json => {:error => 'Parent does not exist.'}.to_json, :status => 404 unless @items.present?
        end
      end

      # Use callbacks to share common setup or constraints between actions.
      def get_item
        get_item_class.find_by_id(params[:id])
      end

      # Set @parent var to the respective parent of the item, see the routes.
      # Can be null.
      def get_parent
        item_hierarchical_parent
      end

      # Return an array to display in the index view.
      # @return Relation array
      def get_items
        # @parent.campuses
      end

      def get_found_items(query, limit = MAX_ITEMS)

      end

      # Set a parent to the item if needed. This is called before saving on create.
      def set_item_parent(parent)
        # @item.campus = @parent
      end

      # Set strong params for the item. Remember to change :item for the actual name
      def item_params
        params.require(get_item_class).permit(:id)
      end

      # Custom params to filter
      def query_params
        params.permit(:id)
      end

      def should_cache?
        Rails.env.production? && query_params.blank?
      end
    end
  end
end
