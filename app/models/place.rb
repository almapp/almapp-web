# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string           not null
#  slug        :string           not null
#  name        :string
#  service     :boolean          default("false"), not null
#  campus_id   :integer
#  area_id     :integer          not null
#  area_type   :string           not null
#  description :text
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
  include Commentable
  include Likeable
  include MapMarkable

  validates :identifier, presence: true
  validates :campus_id, presence: true

  belongs_to :campus

  belongs_to :area, polymorphic: true

  # has_many :schedule_items
  # has_many :sections, through: :schedule_items
  # has_many :schedule_modules, through: :schedule_items

  delegate :organization, to: :campus, allow_nil: true

  def self.normalize_identifier(identifier)
    return identifier.gsub(' ','').gsub('.','').gsub('_','').gsub('-','').upcase
  end

  def normalized_identifier
    return Place.normalize_identifier(self.identifier)
  end

  def self.search_by_identifier(identifier)
    Place.where("lower(identifier) = ?", identifier.downcase).first
  end

  def self.search_by_identifier_and_camp_id(identifier, camp_id)
    Place.where("lower(identifier) = ? AND camp_id = ?", identifier.downcase, camp_id).first
  end
end
