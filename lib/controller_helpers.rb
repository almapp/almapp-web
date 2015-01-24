module ControllerHelpers
  module V1

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

    def json_root(resource = @resource)
      resource.class.name.underscore.downcase
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

    #helper Expiration
    #helper_method :json_root, :template_for_resource, :polymorphic_type, :resource_path_for, :resource_url_for, :nested_resource_count, :template_for_collections, :get_periods

    def self.included(c)
      c.helper Expiration
      c.helper_method :json_root, :template_for_resource, :polymorphic_type, :resource_path_for, :resource_url_for, :nested_resource_count, :template_for_collections, :get_periods
    end

    #=================
    #==== Methods ====
    #=================

    protected

    def resource_organizational_parent
      if params[:academic_unity_id]
        AcademicUnity.find_by_id(params[:academic_unity_id])
      elsif params[:faculty_id]
        Faculty.find_by_id(params[:faculty_id])
      elsif params[:building_id]
        Building.find_by_id(params[:building_id])
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
      elsif params[:building_id]
        Building.find_by_id(params[:building_id])
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
  end
end