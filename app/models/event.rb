# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  slug         :string           not null
#  private      :boolean          default("false")
#  description  :text             not null
#  publish_date :datetime         not null
#  place_id     :integer
#  from_date    :datetime
#  to_date      :datetime         not null
#  user_id      :integer
#  host_id      :integer          not null
#  host_type    :string           not null
#  facebook_url :string
#  external_url :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Event < ActiveRecord::Base
end
