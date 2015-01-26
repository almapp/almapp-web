# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  course_id  :integer          not null
#  number     :integer          not null
#  semester   :integer          not null
#  year       :integer          not null
#  created_at :datetime
#  updated_at :datetime
#  vacancy    :integer          default(-1)
#

class Section < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher

  validates :course_id, presence: true
  validates :semester, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :year, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates_uniqueness_of :course_id, scope: [:number, :year, :semester]

  belongs_to :course

  has_many :schedule_items
  has_many :schedule_modules, through: :schedule_items
  has_many :places, through: :schedule_items

  has_and_belongs_to_many :section_students, class_name: 'User'
  has_and_belongs_to_many :teachers

  has_many :assistantships
  has_many :assistants, through: :assistantships, source: :user, class_name: 'User'

  scope :period, lambda { |year, semester| where(year: year, semester: semester) }

  #def self.period(course, year, semester)
  #  where(course: course, year: year, semester: semester)
  #end

  def self.available_periods_for(course)
    where(course: course).pluck(:year, :semester).uniq
  end

  def identifier
    "#{self.course.initials}-#{self.number}"
  end

  def self.find_by_identifier(identifier = '', year = current_year, semester = current_semester)
    array = identifier.split('-')
    find_by_name_and_number(array[0], array[1], year, semester) if array.size == 2
  end

  def self.find_by_name_and_number(initials, number, year = current_year, semester = current_semester)
    period(year, semester).joins(:course).merge(Course.where(initials: initials)).first
  end

end
