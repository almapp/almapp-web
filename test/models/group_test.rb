# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  slug        :string           not null
#  email       :string           not null
#  url         :string
#  facebook    :string
#  twitter     :string
#  information :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
