module Api
  module V1
    class BaseController < ApplicationController
      include ControllerHelpers::V1

      before_action :authenticate_user!, only: [:create, :destroy, :update]
      before_action :set_parent, only: [:index, :create]
      before_action :set_resource, only: [:show, :update, :destroy]

      #=================
      #==== Actions ====
      #=================

      def index
        @resources = get_resources.where(query_params)
      end

      # GET /camps/1
      # GET /camps/1.json
      def show
      end

      # POST /camps
      # POST /camps.json
      def create
        @resource = get_resource_class.new(resource_params)
        set_resource_parent
        if @resource.save
          render :show, status: :created
        else
          render json: @resource.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /camps/1
      # PATCH/PUT /camps/1.json
      def update
        if @resource.update(resource_params)
          render :show, status: :ok
        else
          render json: @resource.errors, status: :unprocessable_entity
        end
      end

      # DELETE /camps/1
      # DELETE /camps/1.json
      def destroy
        @resource.destroy
        head :no_content
      end

      #=================
      #==== Helpers ====
      #=================

      # Use callbacks to share common setup or constraints between actions.
      def set_resource
        @resource = get_resource_class.find_by_id(params[:id])
        render :json => {:error => "#{@resource_class} with ID = #{params[:id]} was not found."}.to_json, :status => 404 unless @resource.present?
      end


      # Set a parent to the resource if needed. This is called before saving on create.
      def set_resource_parent
        # @resource.campus = @parent
      end

      # Return an array to display in the index view.
      # @return Relation array
      def get_resources
        # @parent.campuses
      end

      # Set @parent var to the respective parent of the resource, see the routes.
      # Can be null.
      def set_parent
        # @parent = Campus.find(params[:campus_id])
      end

      # Set strong params for the resource. Remember to change :resource for the actual name
      def resource_params
        # params.require(:resource).permit(:attribute1, :attribute2)
      end

      # Custom params to filter
      def query_params
        # allowing us to filter by this
        #params.permit(:attribute1, :attribute2)
      end
    end
  end
end
