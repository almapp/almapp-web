module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, as: :likeable
  end

  def positive_likes
    self.likes.positive
  end

  def negative_likes
    self.likes.negative
  end
end