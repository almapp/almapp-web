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
#  created_at        :datetime
#  updated_at        :datetime
#  comments_count    :integer          default(0), not null
#  likes_count       :integer          default(0), not null
#  dislikes_count    :integer          default(0), not null
#

class Course < ActiveRecord::Base
  searchkick callbacks: false, word_start: [:initials, :name], text_middle: [:name]

  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :initials, presence: true #, uniqueness: {scope: 'academic_unity.faculty.campus.organization'} # TODO Test
  validates :academic_unity_id, presence: true

  # Causes error if left empty
  validates :credits, numericality: {greater_than_or_equal_to: 0}, if: 'credits.present?'

  belongs_to :academic_unity

  has_many :sections, dependent: :destroy
  has_many :section_students, through: :sections, source: :section_students, class_name: 'User'
  has_many :teachers, through: :sections

  def available_periods
    Section.available_periods_for(self)
  end

  def available_period?(year = current_year, period = current_period)
    available_periods.include? [year, period]
  end

  def self.for_period(year = current_year, period = current_period)
    self.joins(:sections).merge(Section.period(year, period))
  end

  def sections_for_period(year = current_year, period = current_period)
    sections.period(year, period)
  end

  def section_students_for_period(year = current_year, period = current_period)
    section_students.joins(:sections).merge(Section.period(year, period))
  end

  def teachers_for_period(year = current_year, period = current_period)
    teachers.joins(:sections).merge(Section.period(year, period))
  end

  # merge: http://api.rubyonrails.org/classes/ActiveRecord/SpawnMethods.html#method-i-merge
end
