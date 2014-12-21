# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  initials          :string           not null
#  name              :string
#  slug              :string           not null
#  credits           :integer
#  availability      :boolean          default("true")
#  academic_unity_id :integer
#  description       :text
#  capacity          :integer
#  enrolled          :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Course < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include Likeable

  validates :initials, presence: true, uniqueness: {scope: 'academic_unity.faculty.campus.organization'} # TODO Test
  validates :academic_unity_id, presence: true

  # Causes error if left empty
  validates :capacity, numericality: {greater_than_or_equal_to: 0}, if: 'capacity.present?'
  validates :credits, numericality: {greater_than_or_equal_to: 0}, if: 'credits.present?'
  validates :enrolled, numericality: {greater_than_or_equal_to: 0}, if: 'enrolled.present?'

  has_many :sections
  belongs_to :academic_unity

  def teachers
    self.sections.teachers
  end
end
