# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  abbreviation    :string           not null
#  name            :string           not null
#  slug            :string           not null
#  organization_id :integer          not null
#  address         :string
#  url             :string
#  facebook        :string
#  twitter         :string
#  phone           :string
#  email           :string
#  description     :text
#  place_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Campus < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Likeable
  include MapMarkable

  validates :abbreviation, presence: true, uniqueness: {scope: :organization_id}
  validates :name, presence: true
  validates :organization_id, presence: true

  belongs_to :organization

  has_many :faculties
  has_many :academic_unities, through: :faculties
  has_many :courses, through: :academic_unities

  has_many :faculty_places, through: :faculties, source: :places, class_name: 'Place'
  has_many :places

  def places
    first_level_places.append(faculty_places)
  end

  def campus
    return self
  end

  extend FriendlyId
  friendly_id :name, use: :scoped, scope: :organization # http://www.rubydoc.info/github/norman/friendly_id/FriendlyId/Scoped
end
