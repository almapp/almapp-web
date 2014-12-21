# == Schema Information
#
# Table name: academic_unities
#
#  id          :integer          not null, primary key
#  short_name  :string           not null
#  name        :string
#  faculty_id  :integer
#  slug        :string           not null
#  url         :string
#  email       :string
#  address     :string
#  information :text
#  facebook    :string
#  twitter     :string
#  created_at  :datetime
#  updated_at  :datetime
#

class AcademicUnity < ActiveRecord::Base
end
