# == Schema Information
#
# Table name: academic_unities
#
#  id          :integer          not null, primary key
#  short_name  :string           not null
#  name        :string
#  faculty_id  :integer
#  slug        :string           not null
#  url         :string
#  email       :string
#  address     :string
#  information :text
#  facebook    :string
#  twitter     :string
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class AcademicUnityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
