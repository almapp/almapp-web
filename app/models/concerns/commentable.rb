module Commentable
  extend ActiveSupport::Concern

  included do
    validates :comments_count, presence: true, numericality: {greater_than_or_equal_to: 0}

    has_many :comments, -> { order(created_at: :desc) }, as: :commentable
  end

  def add_comment_from(user, comment_content, anonymous = false)
    Comment.create!(user: user, commentable:self, comment: comment_content, anonymous: anonymous, hidden: false)
  end

  module ClassMethods
    def least_commented
      #returns the article/event which has the least number of comments
    end
  end
end