# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  title        :string(255)      not null
#  private      :boolean          default(FALSE)
#  information  :text             default(""), not null
#  publish_date :datetime         not null
#  place_id     :integer
#  from_date    :datetime
#  to_date      :datetime         not null
#  user_id      :integer
#  host_id      :integer          not null
#  host_type    :string(255)      not null
#  facebook_url :string(255)
#  external_url :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
