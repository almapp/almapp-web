# == Schema Information
#
# Table name: faculties
#
#  id           :integer          not null, primary key
#  abbreviation :string           not null
#  short_name   :string           not null
#  name         :string           not null
#  slug         :string           not null
#  campus_id    :integer          not null
#  address      :string
#  phone        :string
#  email        :string
#  url          :string
#  facebook     :string
#  description  :text
#  twitter      :string
#  zoom         :float            default("0.0")
#  angle        :float            default("0.0")
#  tilt         :float            default("0.0")
#  latitude     :float            default("0.0")
#  longitude    :float            default("0.0")
#  floor        :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Faculty < ActiveRecord::Base
end
