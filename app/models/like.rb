# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  likeable_id   :integer          not null
#  likeable_type :string           not null
#

class Like < ActiveRecord::Base
end
