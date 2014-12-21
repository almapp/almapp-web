# == Schema Information
#
# Table name: faculties
#
#  id           :integer          not null, primary key
#  abbreviation :string           not null
#  short_name   :string           not null
#  name         :string           not null
#  slug         :string           not null
#  campus_id    :integer          not null
#  address      :string
#  phone        :string
#  email        :string
#  url          :string
#  facebook     :string
#  description  :text
#  twitter      :string
#  place_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class FacultyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
