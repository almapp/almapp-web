module Api
  module V1
    class BaseController < ApplicationController
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

      module Expiration
        def very_short
          1.minutes
        end

        def short
          5.minutes
        end

        def normal
          10.minutes
        end

        def long
          30.minutes
        end

        def very_long
          1.hours
        end
      end

      class Periods
        attr_accessor :year ,:periods

        def initialize(*args)
          @year, @periods = args
        end
      end

      def get_periods
        if params[:periods] && params[:periods].size != 0
          array = Array.new
          my_hash = Hash.new
          params[:periods].each do |period|
            year = period.split('-')[0]
            semester = period.split('-')[1]

            if my_hash[year]
              my_hash[year] << semester
            else
              my_hash[year] = [semester]
            end
          end

          my_hash.sort.map do |k, v|
            array << Periods.new(k, v)
          end
          array

        elsif params[:year] && params[:semester]
          [Periods.new(params[:year], [params[:semester]])]
        elsif params[:year]
          [Periods.new(params[:year], [current_semester])]
        else
          [Periods.new(current_year, [current_semester])]
        end
      end

      def template_for_collections
        'api/v1/collections'
      end

      def template_for_resource(resource = nil, layout = 'resource')
        if resource.present?
          "api/v1/#{resource.class.name.pluralize.underscore.downcase}/#{layout}"
        else
          "api/v1/#{self.controller_name}/#{layout}"
        end
      end

      def polymorphic_type(polymorphic_resource_attr)
        polymorphic_resource_attr.class.name.underscore.downcase
      end

      def resource_path_for(nested_resource)
        #url_for([:api, :v1, resource, nested_resource])
        "/api/v1/#{self.controller_name}/#{@resource.id}/#{nested_resource}"
      end

      def resource_url_for(nested_resource)
        request.host.concat(resource_path_for(nested_resource))
      end

      def nested_resource_count(nested_resource)
        @resource.send(nested_resource).send('size')
      end

      helper Expiration
      helper_method :template_for_resource, :polymorphic_type, :resource_path_for, :resource_url_for, :nested_resource_count, :template_for_collections, :get_periods

      #=================
      #==== Methods ====
      #=================

      protected

      def resource_organizational_parent
        if params[:academic_unity_id]
          AcademicUnity.find_by_id(params[:academic_unity_id])
        elsif params[:faculty_id]
          Faculty.find_by_id(params[:faculty_id])
        elsif params[:campus_id]
          Campus.find_by_id(params[:campus_id])
        else
          current_organization
        end
      end

      def resource_hierarchical_parent
        if params[:group_id]
          @parent = Group.find(params[:group_id])
        elsif params[:teacher_id]
          @parent = Teacher.find(params[:teacher_id])
        elsif params[:section_id]
          @parent = Section.find(params[:section_id])
        elsif params[:course_id]
          @parent = Course.find(params[:course_id])
        elsif params[:career_id]
          @parent = Career.find(params[:career_id])
        elsif params[:event_id]
          @parent = Event.find(params[:event_id])
        elsif params[:place_id]
          @parent = Place.find(params[:place_id])
        elsif params[:post_id]
          @parent = Post.find(params[:post_id])
        elsif params[:user_id]
          @parent = User.find(params[:user_id])
        elsif params[:academic_unity_id]
          @parent = AcademicUnity.find(params[:academic_unity_id])
        elsif params[:faculty_id]
          @parent = Faculty.find(params[:faculty_id])
        elsif params[:campus_id]
          @parent = Campus.find(params[:campus_id])
        else
          @parent = current_organization
        end
      end

      # The resource class based on the controller
      # @return [Class]
      def get_resource_class
        @resource_class ||= get_resource_name.classify.constantize
      end

      # The singular name for the resource class based on the controller
      # @return [String]
      def get_resource_name
        @resource_name ||= self.controller_name.singularize
      end

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
