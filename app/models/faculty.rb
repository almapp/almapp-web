# == Schema Information
#
# Table name: faculties
#
#  id           :integer          not null, primary key
#  abbreviation :string           not null
#  short_name   :string           not null
#  name         :string           not null
#  slug         :string           not null
#  campus_id    :integer          not null
#  address      :string
#  phone        :string
#  email        :string
#  url          :string
#  facebook     :string
#  description  :text
#  twitter      :string
#  zoom         :float            default("0.0")
#  angle        :float            default("0.0")
#  tilt         :float            default("0.0")
#  latitude     :float            default("0.0")
#  longitude    :float            default("0.0")
#  floor        :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Faculty < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include Likeable
  include MapMarkable

  validates :name, presence: true
  validates :campus_id, presence: true
  validates :abbreviation, presence: true, uniqueness: {scope: 'campus.organization'}
  validates :short_name, presence: true, uniqueness: {scope: 'campus.organization'}

  belongs_to :campus
  delegate :organization, :to => :camp, :allow_nil => true

  has_many :academic_unities
  has_many :courses, through: :academic_unities
  has_many :careers, through: :academic_unities
  has_many :teachers, through: :academic_unities

  has_many :faculty_places, -> { order(created_at: :asc) }, as: :area, class_name: 'Place'
  has_many :academic_unity_places, through: :academic_unities, source: :place

  def places
    (faculty_places.all + academic_unity_places.all).uniq
  end

  has_and_belongs_to_many :groups
end
