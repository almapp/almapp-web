# == Schema Information
#
# Table name: teachers
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  url                 :string(255)
#  information         :text             default("")
#  created_at          :datetime
#  updated_at          :datetime
#  comments_count      :integer          default(0), not null
#  likes_count         :integer          default(0), not null
#  dislikes_count      :integer          default(0), not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
