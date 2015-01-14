module PostTarget
  extend ActiveSupport::Concern

  included do
    has_many :direct_posts, as: :target, class_name: 'Post'
    has_many :posts, as: :target, class_name: 'Post' # Override with custom method if needed
  end
end