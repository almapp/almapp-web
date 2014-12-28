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

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
