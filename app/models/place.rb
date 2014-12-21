# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  identifier  :string           not null
#  slug        :string           not null
#  name        :string
#  campus_id   :integer
#  area_id     :integer          not null
#  area_type   :string           not null
#  description :text
#  zoom        :float            default("0.0")
#  angle       :float            default("0.0")
#  tilt        :float            default("0.0")
#  latitude    :float            default("0.0")
#  longitude   :float            default("0.0")
#  floor       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
end
