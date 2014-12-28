# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  initials          :string(255)      not null
#  name              :string(255)
#  credits           :integer
#  availability      :boolean          default(TRUE)
#  academic_unity_id :integer
#  information       :text             default("")
#  capacity          :integer
#  enrolled          :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Course < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :initials, presence: true #, uniqueness: {scope: 'academic_unity.faculty.campus.organization'} # TODO Test
  validates :academic_unity_id, presence: true

  # Causes error if left empty
  validates :capacity, numericality: {greater_than_or_equal_to: 0}, if: 'capacity.present?'
  validates :credits, numericality: {greater_than_or_equal_to: 0}, if: 'credits.present?'
  validates :enrolled, numericality: {greater_than_or_equal_to: 0}, if: 'enrolled.present?'

  belongs_to :academic_unity

  has_many :sections
  has_many :section_students, through: :sections, source: :section_students, class_name: 'User'
  has_many :teachers, through: :sections

  def available_periods
    Section.available_periods_for(self)
  end

  def available_period?(year = current_year, semester = current_semester)
    available_periods.include? [year, semester]
  end

  def self.for_period(year = current_year, semester = current_semester)
    self.joins(:sections).merge(Section.period(year, semester))
  end

  def sections_for_period(year = current_year, semester = current_semester)
    sections.period(year, semester)
  end

  def section_students_for_period(year = current_year, semester = current_semester)
    section_students.joins(:sections).merge(Section.period(year, semester))
  end

  def teachers_for_period(year = current_year, semester = current_semester)
    teachers.joins(:sections).merge(Section.period(year, semester))
  end

  # merge: http://api.rubyonrails.org/classes/ActiveRecord/SpawnMethods.html#method-i-merge
end
