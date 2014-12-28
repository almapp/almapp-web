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
#

require 'test_helper'

class EnrolledCareerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
