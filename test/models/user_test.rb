# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  username        :string           not null
#  email           :string           default(""), not null
#  slug            :string
#  student_id      :string
#  organization_id :integer          not null
#  admin           :boolean          default("false")
#  male            :boolean          default("true")
#  country         :string
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
