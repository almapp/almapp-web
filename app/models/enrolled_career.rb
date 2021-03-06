# == Schema Information
#
# Table name: enrolled_careers
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  career_id      :integer          not null
#  curriculum     :string(255)
#  admission_date :date
#  created_at     :datetime
#  updated_at     :datetime
#  student_id     :string(255)
#

class EnrolledCareer < ActiveRecord::Base
  validates :career_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :career
end
