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

    def json_root(item = @item)
      item.class.name.underscore.downcase
    end

    def template_for_collections
      'api/v1/collections'
    end

    def template_for_item(item = @item, layout = 'item')
      if item.present?
        "api/v1/#{item.class.name.pluralize.underscore.downcase}/#{layout}"
      else
        "api/v1/#{self.controller_name}/#{layout}"
      end
    end

    def polymorphic_type(polymorphic_item_attr)
      polymorphic_item_attr.class.name.underscore.downcase
    end

    def item_path_for(nested_item)
      #url_for([:api, :v1, item, nested_item])
      "/api/v1/#{self.controller_name}/#{@item.id}/#{nested_item}"
    end

    def item_url_for(nested_item)
      request.host.concat(item_path_for(nested_item))
    end

    def nested_item_count(nested_item)
      property = @item.send(nested_item)
      property.present? ? property.send('size') : 0
    end

    #helper Expiration
    #helper_method :json_root, :template_for_item, :polymorphic_type, :item_path_for, :item_url_for, :nested_item_count, :template_for_collections, :get_periods

    def self.included(c)
      c.helper Expiration
      c.helper_method :json_root, :template_for_item, :polymorphic_type, :item_path_for, :item_url_for, :nested_item_count, :template_for_collections, :get_periods
    end

    #=================
    #==== Methods ====
    #=================

    protected

    def item_organizational_parent
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

    def item_hierarchical_parent
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

    # The item class based on the controller
    # @return [Class]
    def get_item_class
      @item_class ||= get_item_name.classify.constantize
    end

    # The singular name for the item class based on the controller
    # @return [String]
    def get_item_name
      @item_name ||= self.controller_name.singularize
    end
  end
end