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

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
