module Likeable
  extend ActiveSupport::Concern

  included do
    validates :likes_count, presence: true, numericality: {greater_than_or_equal_to: 0}
    validates :dislikes_count, presence: true, numericality: {greater_than_or_equal_to: 0}

    has_many :likes, -> { positive }, as: :likeable, dependent: :destroy
    has_many :dislikes, -> { negative }, as: :likeable, class_name: 'Like'

    has_many :liked_by_users, through: :likes, source: :user
    has_many :disliked_by_users, through: :dislikes, source: :user
  end

  def add_like_by (user)
    Like.create!(user:user, valuation:1, likeable:self)
  end

  def add_dislike_by (user)
    Like.create!(user:user, valuation:-1, likeable:self)
  end
end