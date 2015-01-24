# == Schema Information
#
# Table name: api_keys
#
#  id            :integer          not null, primary key
#  client        :string(255)      default(""), not null
#  key           :string(255)      default(""), not null
#  contact_name  :string(255)      default(""), not null
#  contact_email :string(255)      default(""), not null
#  valid         :boolean          default(TRUE), not null
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
