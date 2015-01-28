# == Schema Information
#
# Table name: careers
#
#  id                :integer          not null, primary key
#  name              :string(255)      not null
#  url               :string(255)
#  curriculum_url    :string(255)
#  academic_unity_id :integer
#  information       :text             default("")
#  created_at        :datetime
#  updated_at        :datetime
#  comments_count    :integer          default(0), not null
#  likes_count       :integer          default(0), not null
#  dislikes_count    :integer          default(0), not null
#

require 'test_helper'

class CareerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
