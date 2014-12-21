# == Schema Information
#
# Table name: teachers
#
#  id          :integer          not null, primary key
#  name        :string
#  slug        :string           not null
#  email       :string
#  url         :string
#  information :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
