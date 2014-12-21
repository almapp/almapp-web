module MapMarkable
  extend ActiveSupport::Concern

  included do
    has_many :first_level_places, as: :area, class_name: 'Place'
    belongs_to :localization, :class_name => 'Place', :foreign_key => 'place_id'
    after_save :set_localization_area
  end

  def set_localization_area
    if localization.present?
      localization.area = self
      localization.save
    end
  end
end