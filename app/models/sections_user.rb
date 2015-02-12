# == Schema Information
#
# Table name: sections_users
#
#  id         :integer          not null, primary key
#  section_id :integer          not null
#  user_id    :integer          not null
#

class SectionsUser < ActiveRecord::Base
  belongs_to :section
  belongs_to :user
end
