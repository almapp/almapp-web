# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  content     :text             default(""), not null
#  notify      :boolean          default("false"), not null
#  entity_id   :integer
#  entity_type :string
#  target_id   :integer          not null
#  target_type :string           not null
#  place_id    :integer
#  event_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Post < ActiveRecord::Base
  include Commentable
  include Likeable

  validates :user, presence: true
  validates :notify, presence: true
  validates :target_id, presence: true
  validates :target_type, presence: true
  validates :content, length: {
                    minimum: 2,
                    maximum: 700,
                    too_short: 'must have at least %{count} words.',
                    too_long: 'must have at most %{count} words.'
                    }, presence: true

  belongs_to :place
  belongs_to :event
  belongs_to :user

  belongs_to :target, polymorphic: true
  belongs_to :entity, polymorphic: true

end
