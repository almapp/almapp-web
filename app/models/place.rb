# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string(255)      not null
#  name        :string(255)
#  service     :boolean          default(FALSE), not null
#  area_id     :integer          not null
#  area_type   :string(255)      not null
#  information :text             default("")
#  zoom        :float            default(0.0)
#  angle       :float            default(0.0)
#  tilt        :float            default(0.0)
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  floor       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
  include Commentable
  include Likeable

  validates :identifier, presence: true
  validates :area_id, presence: true
  validates :area_type, presence: true
  validates :identifier, uniqueness: { scope: [:area_type, :area_id] }

  belongs_to :area, polymorphic: true

  scope :non_service_place, -> {where(service: false)}
  scope :service_place, -> {where(service: true)}

  before_validation :set_missing_name

  def set_missing_name
    self.identifier = self.area.abbreviation if self.identifier.blank?
    self.name = identifier if self.name.blank?
  end

  # TODO validate uniqueness on campus

  def campus
    return area.campus
  end

  def organization
    return campus.organization if campus.present?
  end

  has_many :posts
  has_many :events

  # has_many :schedule_items
  # has_many :sections, through: :schedule_items
  # has_many :schedule_modules, through: :schedule_items

  def self.normalize_identifier(identifier)
    return identifier.gsub(' ','').gsub('.','').gsub('_','').gsub('-','').upcase
  end

  def normalized_identifier
    return Place.normalize_identifier(self.identifier)
  end

  def self.search_by_identifier(identifier)
    Place.where("lower(identifier) = ?", identifier.downcase).first
  end
end
