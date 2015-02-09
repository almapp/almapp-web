# == Schema Information
#
# Table name: academic_unities
#
#  id             :integer          not null, primary key
#  abbreviation   :string(255)
#  short_name     :string(255)
#  name           :string(255)
#  faculty_id     :integer
#  url            :string(255)
#  email          :string(255)
#  address        :string(255)
#  information    :text             default("")
#  facebook       :string(255)
#  twitter        :string(255)
#  place_id       :integer
#  created_at     :datetime
#  updated_at     :datetime
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

class AcademicUnity < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable
  include Mapable
  include Nameable

  validates :short_name, presence: true
  validates :faculty_id, presence: true

  belongs_to :faculty

  has_and_belongs_to_many :teachers
  has_many :courses
  has_many :careers

  has_many :courses_sections, through: :courses, source: :sections

  has_many :courses_students,   through: :courses_sections,   source: :section_students,    class_name: 'User'
  has_many :enrolled_students,  through: :careers,            source: :enrolled_students,   class_name: 'User'

  def campus
    return self.faculty.campus rescue nil
  end
end
