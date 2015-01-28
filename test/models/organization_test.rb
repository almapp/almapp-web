# == Schema Information
#
# Table name: organizations
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  short_name     :string(255)
#  abbreviation   :string(255)      not null
#  information    :text             default("")
#  image          :string(255)
#  url            :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  facebook       :string(255)
#  twitter        :string(255)
#  place_id       :integer
#  address        :string(255)
#  phone          :string(255)
#  comments_count :integer          default(0), not null
#  likes_count    :integer          default(0), not null
#  dislikes_count :integer          default(0), not null
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
