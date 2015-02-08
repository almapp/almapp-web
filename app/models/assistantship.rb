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
  validates :section_id, presence: true
  validates :user_id, presence: true

  belongs_to :section
  belongs_to :user

  def teachers
    self.section.teachers
  end

  def period
    self.section.period
  end

  def year
    self.section.year
  end
end
