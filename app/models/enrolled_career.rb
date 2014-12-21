# == Schema Information
#
# Table name: enrolled_careers
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  career_id      :integer          not null
#  curriculum     :string
#  admission_date :date
#  created_at     :datetime
#  updated_at     :datetime
#

class EnrolledCareer < ActiveRecord::Base
end
