# == Schema Information
#
# Table name: careers
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  url               :string
#  slug              :string           not null
#  curriculum_url    :string
#  academic_unity_id :integer
#  information       :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Career < ActiveRecord::Base
end
