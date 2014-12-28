# == Schema Information
#
# Table name: academic_unities
#
#  id           :integer          not null, primary key
#  abbreviation :string(255)
#  short_name   :string(255)
#  name         :string(255)
#  faculty_id   :integer
#  url          :string(255)
#  email        :string(255)
#  address      :string(255)
#  information  :text             default("")
#  facebook     :string(255)
#  twitter      :string(255)
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class AcademicUnityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
