module PostPublisher
  extend ActiveSupport::Concern

  included do
    has_many :published_posts, -> { order(created_at: :desc) }, as: :entity, class_name: 'Post'
  end

  # for the given article/event returns the first comment
  def find_first_comment
    comments.first
  end

  module ClassMethods
    def least_commented
      #returns the article/event which has the least number of comments
    end
  end
end