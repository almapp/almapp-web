module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, -> { positive }, as: :likeable
    has_many :dislikes, -> { negative }, as: :likeable, class_name: 'Like'

    has_many :liked_by_users, through: :likes, source: :user
    has_many :disliked_by_users, through: :dislikes, source: :user
  end

  def set_like_by (user)
    like = Like.create!(user:user, valuation:1, likeable:self)
    likes << like
    self.save!
  end

  def set_dislike_by (user)
    like = Like.create!(user:user, valuation:-1, likeable:self)
    likes << like
    self.save!
  end

  def like_count
    likes.size
  end

  def dislike_count
    dislikes.size
  end
end