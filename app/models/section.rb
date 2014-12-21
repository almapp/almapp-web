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
#

class Section < ActiveRecord::Base
  include Commentable
  include Posteable
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

  has_and_belongs_to_many :students, class_name: 'User'
  has_and_belongs_to_many :teachers

  has_many :assistantships
  has_many :assistants, through: :assistantships, class_name: 'User'

  def identifier
    "#{self.course.initials}-#{self.number}"
  end
end
