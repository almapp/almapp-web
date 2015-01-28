# == Schema Information
#
# Table name: teachers
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  url            :string(255)
#  information    :text             default("")
#  created_at     :datetime
#  updated_at     :datetime
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

class Teacher < ActiveRecord::Base
  include Commentable
  include Likeable

  validates :name, presence: true

  has_and_belongs_to_many :sections
  has_and_belongs_to_many :academic_unities

  def faculties
    Faculty.joins(:academic_unities).merge(academic_unities)
  end

  has_many :courses, through: :sections

  def courses_for_period(year = current_year, semester = current_semester)
    Course.joins(:sections).merge(sections.period(year, semester)) #.order('courses.initials ASC')
  end
end
