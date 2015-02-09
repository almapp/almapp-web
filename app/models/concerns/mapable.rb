module Mapable
  extend ActiveSupport::Concern

  included do
    has_many :first_level_places, as: :area, class_name: 'Place'

    has_many :places, as: :area, class_name: 'Place' # Override with custom method if needed

    belongs_to :localization, :class_name => 'Place', :foreign_key => 'place_id'
    # after_save :set_localization_area
    after_create :set_localization_area
  end

  def latitude
    localization.latitude
  end

  def longitude
    localization.longitude
  end

  def set_localization_area
    if localization.present?
      localization.identifier = "#{self.class.name} #{self.abbreviation}".upcase
      localization.name = self.short_name
      localization.save
    end
  end
end