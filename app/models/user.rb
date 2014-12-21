# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  username        :string           not null
#  email           :string           default(""), not null
#  slug            :string
#  student_id      :string
#  organization_id :integer          not null
#  admin           :boolean          default("false")
#  male            :boolean          default("true")
#  country         :string
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  include PostPublisher

  validates :organization_id, presence: true
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A[a-z0-9]+[a-z0-9\._-]*@[a-z0-9\.]+\.[a-z]{2,5}\z/i

  belongs_to :organization

  has_many :friendships

  def friends
    # (friends.all + inverse_friends.all).uniq
    # User.connection.execute('SELECT * FROM users WHERE user_id IN ((SELECT friend_id FROM friendships WHERE user_id = (?)) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)))') #, :skip_logging)
    User.where('users.id IN ((SELECT friend_id FROM friendships WHERE user_id = (?) AND accepted = true) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)  AND accepted = true))', self.id, self.id) #, :skip_logging)
  end

  def pending_friends
    User.where('users.id IN ((SELECT friend_id FROM friendships WHERE user_id = (?) AND accepted = false) UNION (SELECT user_id FROM friendships WHERE friend_id = (?)  AND accepted = false))', self.id, self.id)
  end

  has_and_belongs_to_many :sections

  has_many :assistantships
  has_many :assisting_sections, through: :assistantships, source: :section

  has_many :enrolled_careers
  has_many :careers, through: :enrolled_careers

  has_many :event_assistances
  has_many :attending_events, through: :event_assistances, source: :event

  has_many :commented_content, class_name: 'Comment'
  has_many :liked_content, class_name: 'Like'

  before_validation :create_slug

  extend FriendlyId
  friendly_id :slug_candidates, use: :scoped, scope: :organization

  def create_slug
    self.username = self.email.split('@').first
  end

  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
    :username,
    [:username, :id]
    ]
  end

end
