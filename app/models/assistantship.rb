# == Schema Information
#
# Table name: assistantships
#
#  id         :integer          not null, primary key
#  section_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Assistantship < ActiveRecord::Base
end
