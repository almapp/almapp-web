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
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Faculty < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Likeable
  include MapMarkable

  validates :name, presence: true
  validates :campus_id, presence: true
  validates :abbreviation, presence: true #, uniqueness: {scope: 'campus.organization'}
  validates :short_name, presence: true   #,   uniqueness: {scope: 'campus.organization'}

  belongs_to :campus
  delegate :organization, :to => :camp, :allow_nil => true

  has_many :academic_unities
  has_many :courses, through: :academic_unities
  has_many :careers, through: :academic_unities
  has_many :teachers, through: :academic_unities

  has_many :academic_unity_places, through: :academic_unities, source: :places, class_name: 'Place'

  has_many :places

  def places
    first_level_places.append(academic_unity_places)
  end

  has_and_belongs_to_many :groups

  extend FriendlyId
  friendly_id :short_name, use: :scoped, scope: :campus # http://www.rubydoc.info/github/norman/friendly_id/FriendlyId/Scoped

  def set_localization_area
    if localization.present?
      localization.identifier = abbreviation
      localization.name = name
      localization.area = self
      localization.save
    end
  end

end
