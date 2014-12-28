# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  user_id          :integer          not null
#  commentable_id   :integer          not null
#  commentable_type :string(255)      not null
#  comment          :text             default(""), not null
#  hidden           :boolean          default(FALSE), not null
#  created_at       :datetime
#  updated_at       :datetime
#  anonymous        :boolean          default(FALSE), not null
#

class Comment < ActiveRecord::Base
  include Likeable

  WORD_LIMIT = 300

  validates :user_id, presence: true
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true
  validates :comment, presence: true, length: {
                    minimum: 1,
                    maximum: WORD_LIMIT,
                    too_short: 'must have at least %{count} words.',
                    too_long: 'must have at most %{count} words.'
                    }

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :responses, -> { order(created_at: :asc) }, as: :commentable, class_name: 'Comment'
end
