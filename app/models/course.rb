# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  initials          :string           not null
#  name              :string
#  slug              :string           not null
#  credits           :integer
#  availability      :boolean          default("true")
#  academic_unity_id :integer
#  description       :text
#  capacity          :integer
#  enrolled          :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Course < ActiveRecord::Base
end
