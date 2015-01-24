module Api
  module V1
    class BaseController < ApplicationController
      include ControllerHelpers::V1

      before_action :authenticate_user!, only: [:create, :destroy, :update]
      before_action :set_parent, only: [:index, :create]
      before_action :set_item, only: [:show, :update, :destroy]

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
        set_item_parent
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

      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = get_item_class.find_by_id(params[:id])
        render :json => {:error => "#{@item_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless @item.present?
      end


      # Set a parent to the item if needed. This is called before saving on create.
      def set_item_parent
        # @item.campus = @parent
      end

      # Return an array to display in the index view.
      # @return Relation array
      def get_items
        # @parent.campuses
      end

      # Set @parent var to the respective parent of the item, see the routes.
      # Can be null.
      def set_parent
        # @parent = Campus.find(params[:campus_id])
      end

      # Set strong params for the item. Remember to change :item for the actual name
      def item_params
        # params.require(:item).permit(:attribute1, :attribute2)
      end

      # Custom params to filter
      def query_params
        # allowing us to filter by this
        #params.permit(:attribute1, :attribute2)
      end
    end
  end
end
