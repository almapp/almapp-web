# == Schema Information
#
# Table name: organizations
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  slug        :string           not null
#  information :text
#  image       :string
#  url         :string
#  created_at  :datetime
#  updated_at  :datetime
#  facebook    :string
#  twitter     :string
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
