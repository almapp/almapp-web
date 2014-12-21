# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  valuation     :integer          default("0"), not null
#  likeable_id   :integer          not null
#  likeable_type :string           not null
#

class Like < ActiveRecord::Base
  validates :user_id, presence: true
  validates :likeable_id, presence: true
  validates :likeable_type, presence: true
  validates :valuation, presence: true, numericality: {greater_than_or_equal_to: -1, less_than_or_equal_to: 1}

  scope :positive, -> { where(valuation: 1) }
  scope :negative, -> { where(valuation: -1) }

  belongs_to :likeable, polymorphic: true
end
