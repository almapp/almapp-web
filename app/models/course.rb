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
  include EventPublisher
  include Likeable

  validates :initials, presence: true, uniqueness: {scope: 'academic_unity.faculty.campus.organization'} # TODO Test
  validates :academic_unity_id, presence: true

  # Causes error if left empty
  validates :capacity, numericality: {greater_than_or_equal_to: 0}, if: 'capacity.present?'
  validates :credits, numericality: {greater_than_or_equal_to: 0}, if: 'credits.present?'
  validates :enrolled, numericality: {greater_than_or_equal_to: 0}, if: 'enrolled.present?'

  belongs_to :academic_unity

  has_many :sections
  has_many :teachers, through: :sections

  extend FriendlyId
  friendly_id :initials, use: :scoped, scope: :academic_unity # http://www.rubydoc.info/github/norman/friendly_id/FriendlyId/Scoped

  def normalize_friendly_id(string)
    super.upcase
  end
end
