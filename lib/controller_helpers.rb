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

    def should_show_paths?(item = @item)
      false
    end

    def json_path_key(item = @item)
      'path'
    end

    def json_path(item = @item)
      eval("api_v1_#{item.class.name.underscore.downcase}_path(item)")
    end
    

    def self.included(c)
      c.helper Expiration
      c.helper_method :json_root,
                      :template_for_item,
                      :polymorphic_type,
                      :item_path_for,
                      :item_url_for,
                      :nested_item_count,
                      :template_for_collections,
                      :get_periods,
                      :should_show_paths?,
                      :json_path_key,
                      :json_path
    end

    #=================
    #==== Methods ====
    #=================

    ORGANIZATIONAL_PARENT_HASH = {
      academic_unity_id: AcademicUnity,
      faculty_id: Faculty,
      building_id: Building,
      campus_id: Campus
    }

    HIERARCHICAL_PARENT_HASH = {
      group_id: Group,
      teacher_id: Teacher,
      section_id: Section,
      course_id: Course,
      career_id: Career,
      event_id: Event,
      place_id: Place,
      post_id: Post,
      user_id: User
    }.merge(ORGANIZATIONAL_PARENT_HASH)

    protected

    def parent_includes(parent_types, parent_include = nil, parent_references = nil)
      parent_types.each do |param, parent_type|
        if params[param].present?
          if parent_include.present?
            return parent_type.includes(parent_include).references(parent_references).find_by_id(params[param])
          else
            return parent_type.find_by_id(params[param])
          end
        end
      end
      current_organization
    end

    def parent_eager(parent_types, parent_eager_load = nil)
      parent_types.each do |param, parent_type|
        if params[param].present?
          if parent_eager_load.present?
            return parent_type.eager_load(parent_eager_load).find_by_id(params[param])
          else
            return parent_type.find_by_id(params[param])
          end
        end
      end
      current_organization
    end

    def item_organizational_parent_eager(parent_eager_load = nil)
      parent_eager(ORGANIZATIONAL_PARENT_HASH, parent_eager_load)
    end

    def item_hierarchical_parent_eager(parent_eager_load = nil)
      parent_eager(HIERARCHICAL_PARENT_HASH, parent_eager_load)
    end

    def item_organizational_parent(parent_include = nil, parent_references = nil)
      parent_includes(ORGANIZATIONAL_PARENT_HASH, parent_include, parent_references)
    end


    def item_hierarchical_parent(parent_include = nil, parent_references = nil)
      parent_includes(HIERARCHICAL_PARENT_HASH, parent_include, parent_references)
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