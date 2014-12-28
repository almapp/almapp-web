# == Schema Information
#
# Table name: faculties
#
#  id           :integer          not null, primary key
#  abbreviation :string(255)
#  short_name   :string(255)
#  name         :string(255)
#  campus_id    :integer          not null
#  address      :string(255)
#  phone        :string(255)
#  email        :string(255)
#  url          :string(255)
#  facebook     :string(255)
#  information  :text             default("")
#  twitter      :string(255)
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Faculty < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

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

  has_many :courses_students,     through: :academic_unities,   source: :courses_students,    class_name: 'User'
  has_many :enrolled_students,    through: :academic_unities,   source: :enrolled_students,   class_name: 'User'

  has_and_belongs_to_many :groups

  has_many :academic_unity_places, through: :academic_unities, source: :places, class_name: 'Place'

  has_many :academic_unity_events, through: :academic_unities, source: :events, class_name: 'Event'

  # Overrides has_many relationship from Mapable
  def places
    first_level_places.append(academic_unity_places)
  end

  # Overrides has_many relationship from EventPublisher
  def events
    hosting_events.append(academic_unity_events)
  end
end
