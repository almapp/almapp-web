module Api
  module V1
    class BaseController < ApplicationController
      include ControllerHelpers::V1

      before_action :authenticate_user!, only: [:create, :destroy, :update]
      before_action :set_and_validate_parent, only: [:index, :create]
      before_action :set_and_validate_items, only: [:index]
      before_action :set_and_validate_item, only: [:show, :update, :destroy]

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

      #=================
      #==== Helpers ====
      #=================

      def set_and_validate_item
        @item = get_item
        render :json => {:error => "#{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless @item.present?
      end

      def set_and_validate_parent
        @parent = get_parent
        # render :json => {:error => "Parent for #{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless @parent.present?
      end

      def set_and_validate_items
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
    end
  end
end
