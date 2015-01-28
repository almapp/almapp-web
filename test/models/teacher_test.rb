# == Schema Information
#
# Table name: teachers
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  email          :string(255)
#  url            :string(255)
#  information    :text             default("")
#  created_at     :datetime
#  updated_at     :datetime
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
