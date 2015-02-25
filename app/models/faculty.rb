# == Schema Information
#
# Table name: faculties
#
#  id                  :integer          not null, primary key
#  abbreviation        :string(255)
#  short_name          :string(255)
#  name                :string(255)
#  campus_id           :integer          not null
#  address             :string(255)
#  phone               :string(255)
#  email               :string(255)
#  url                 :string(255)
#  facebook            :string(255)
#  information         :text             default("")
#  twitter             :string(255)
#  place_id            :integer
#  created_at          :datetime
#  updated_at          :datetime
#  comments_count      :integer          default(0), not null
#  likes_count         :integer          default(0), not null
#  dislikes_count      :integer          default(0), not null
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer
#  banner_updated_at   :datetime
#

class Faculty < ActiveRecord::Base
  searchkick callbacks: false, word_start: [:abbreviation, :short_name], text_middle: [:name]

  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

  validates :name, presence: true
  validates :campus_id, presence: true
  validates :abbreviation, presence: true, uniqueness: {scope: :campus_id}
  validates :short_name, presence: true, uniqueness: {scope: :campus_id}

  belongs_to :campus
  delegate :organization, :to => :campus, :allow_nil => true

  has_many :academic_unities
  has_many :courses, through: :academic_unities
  has_many :careers, through: :academic_unities
  has_many :teachers, through: :academic_unities

  has_many :courses_students,     through: :academic_unities,   source: :courses_students,    class_name: 'User'
  has_many :enrolled_students,    through: :academic_unities,   source: :enrolled_students,   class_name: 'User'

  has_and_belongs_to_many :groups

  has_many :academic_unity_places, through: :academic_unities, source: :places, class_name: 'Place'
  has_many :academic_unity_posts, through: :academic_unities, source: :posts, class_name: 'Post'
  has_many :academic_unity_events, through: :academic_unities, source: :events, class_name: 'Event'

  # Overrides has_many relationship from Mapable
  def places
    Place.where('(places.area_id = ? AND places.area_type = \'Faculty\') OR (places.area_id IN (SELECT academic_unities.id FROM academic_unities WHERE academic_unities.faculty_id = ?) AND places.area_type = \'AcademicUnity\')', id, id)
  end

  # Overrides has_many relationship from PostTarget
  def posts
    Post.where('(posts.target_id = ? AND posts.target_type = \'Faculty\') OR (posts.target_id IN (SELECT academic_unities.id FROM academic_unities WHERE academic_unities.faculty_id = ?) AND posts.target_type = \'AcademicUnity\')', id, id)
  end

  # Overrides has_many relationship from EventPublisher
  def events
    Event.where('(events.host_id = ? AND events.host_type = \'Faculty\') OR (events.host_id IN (SELECT academic_unities.id FROM academic_unities WHERE academic_unities.faculty_id = ?) AND events.host_type = \'AcademicUnity\')', id, id)
  end
end
