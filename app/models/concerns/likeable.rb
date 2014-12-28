module Likeable
  extend ActiveSupport::Concern

  included do
    has_many :likes, -> { positive }, as: :likeable
    has_many :dislikes, -> { negative }, as: :likeable, class_name: 'Like'
  end

  def like_count
    likes.size
  end

  def dislike_count
    dislikes.size
  end
end