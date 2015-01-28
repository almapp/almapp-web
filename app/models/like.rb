# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer          not null
#  valuation     :integer          default(1), not null
#  likeable_id   :integer          not null
#  likeable_type :string(255)      not null
#  created_at    :datetime
#  updated_at    :datetime
#

class Like < ActiveRecord::Base
  validates :user_id, presence: true
  validates :likeable_id, presence: true
  validates :likeable_type, presence: true
  validates :valuation, presence: true, numericality: {greater_than_or_equal_to: -1, less_than_or_equal_to: 1}
  validates :user_id, uniqueness: {scope: [:valuation, :likeable_id, :likeable_type]}

  scope :positive, -> { where(valuation: 1) }
  scope :negative, -> { where(valuation: -1) }

  belongs_to :user
  belongs_to :likeable, polymorphic: true, counter_cache: true

  before_create do
    old_like = self.class.find_by_user_and_likeable(self.user, self.likeable)
    old_like.destroy if old_like.present?
  end

  def self.find_by_user_and_likeable(user, likeable)
    self.find_by_user_id_and_likeable_type_and_likeable_id(user, likeable.class.name, likeable.id)
  end

  before_create  :increment_counter
  before_destroy :decrement_counter

  def increment_counter
    if valuation == -1
      likeable.increment!(:dislikes_count)
    end
  end

  def decrement_counter
    if valuation == -1
      likeable.decrement!(:dislikes_count)
    end
  end
end
