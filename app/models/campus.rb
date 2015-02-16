# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  abbreviation    :string(255)
#  short_name      :string(255)
#  name            :string(255)
#  organization_id :integer          not null
#  address         :string(255)
#  url             :string(255)
#  facebook        :string(255)
#  twitter         :string(255)
#  phone           :string(255)
#  email           :string(255)
#  information     :text             default("")
#  place_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#  comments_count  :integer          default(0), not null
#  likes_count     :integer          default(0), not null
#  dislikes_count  :integer          default(0), not null
#

class Campus < ActiveRecord::Base
  searchkick callbacks: false, word_start: [:abbreviation, :short_name], text_middle: [:name]

  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

  validates :name, presence: true
  validates :organization_id, presence: true

  validates :abbreviation, presence: true, uniqueness: {scope: :organization_id}
  validates :short_name, presence: true, uniqueness: {scope: :organization_id}

  belongs_to :organization

  has_many :buildings
  has_many :faculties
  has_many :academic_unities, through: :faculties
  has_many :careers, through: :faculties
  has_many :courses, through: :faculties
  has_many :teachers, through: :faculties

  has_many :courses_students,  through: :faculties,   source: :courses_students,    class_name: 'User'
  has_many :enrolled_students, through: :faculties,   source: :enrolled_students,   class_name: 'User'

  def place_with_identifier(identifier)
    results = Place.search(identifier)

    no_campus_items = Array.new

    results.each do |place|
      campus = place.campus
      if campus.present? && campus.id == self.id
        return place
      elsif !campus.present?
        no_campus_items << place
      end
    end

    return no_campus_items.first
  end

  # Overrides has_many relationship from Mapable
  def places
    Place.where('(places.area_id = ? AND places.area_type = \'Campus\') OR (places.area_id IN (SELECT faculties.id FROM faculties WHERE faculties.campus_id = ?) AND places.area_type = \'Faculty\') OR (places.area_id IN (SELECT buildings.id FROM buildings WHERE buildings.campus_id = ?) AND places.area_type = \'Building\') OR (places.area_id IN (SELECT academic_unities.id FROM academic_unities INNER JOIN faculties ON academic_unities.faculty_id = faculties.id WHERE faculties.campus_id = ?) AND places.area_type = \'AcademicUnity\')', id, id, id, id)
  end

  # Overrides has_many relationship from PostTarget
  def posts
    Post.where('(posts.target_id = ? AND posts.target_type = \'Campus\') OR (posts.target_id IN (SELECT faculties.id FROM faculties WHERE faculties.campus_id = ?) AND posts.target_type = \'Faculty\') OR (posts.target_id IN (SELECT buildings.id FROM buildings WHERE buildings.campus_id = ?) AND posts.target_type = \'Building\') OR (posts.target_id IN (SELECT academic_unities.id FROM academic_unities INNER JOIN faculties ON academic_unities.faculty_id = faculties.id WHERE faculties.campus_id = ?) AND posts.target_type = \'AcademicUnity\')', id, id, id, id)
  end

  # Overrides has_many relationship from EventPublisher
  def events
    Event.where('(events.host_id = ? AND events.host_type = \'Campus\') OR (events.host_id IN (SELECT faculties.id FROM faculties WHERE faculties.campus_id = ?) AND events.host_type = \'Faculty\') OR (events.host_id IN (SELECT buildings.id FROM buildings WHERE buildings.campus_id = ?) AND events.host_type = \'Building\') OR (events.host_id IN (SELECT academic_unities.id FROM academic_unities INNER JOIN faculties ON academic_unities.faculty_id = faculties.id WHERE faculties.campus_id = ?) AND events.host_type = \'AcademicUnity\')', id, id, id, id)
  end

  def campus
    self
  end
end
