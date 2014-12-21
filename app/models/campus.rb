# == Schema Information
#
# Table name: campuses
#
#  id              :integer          not null, primary key
#  short_name      :string           not null
#  name            :string           not null
#  slug            :string           not null
#  organization_id :integer          not null
#  address         :string
#  url             :string
#  facebook        :string
#  twitter         :string
#  phone           :string
#  email           :string
#  description     :text
#  icon            :string
#  zoom            :float            default("0.0")
#  angle           :float            default("0.0")
#  tilt            :float            default("0.0")
#  latitude        :float            default("0.0")
#  longitude       :float            default("0.0")
#  floor           :string
#  created_at      :datetime
#  updated_at      :datetime
#

class Campus < ActiveRecord::Base

end
