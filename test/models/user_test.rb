# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  username               :string(255)      not null
#  student_id             :string(255)
#  organization_id        :integer          not null
#  admin                  :boolean          default(FALSE)
#  male                   :boolean          default(TRUE)
#  country                :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  findeable              :boolean          default(TRUE), not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
