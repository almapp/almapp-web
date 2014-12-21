# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  slug        :string           not null
#  email       :string           not null
#  url         :string
#  facebook    :string
#  twitter     :string
#  information :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Group < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :email, presence: true, uniqueness: true, format: /\A[a-z0-9]+[a-z0-9\._-]*@[a-z0-9\.]+\.[a-z]{2,5}\z/i
  validates :name, presence: true

  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :faculties

  has_many :groups_subscribers
  has_many :subscribers, through: :groups_subscribers, source: :user

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged # you must do User.friendly.find('foo')

  # Try building a slug based on the following fields in
  # increasing order of specificity.
  def slug_candidates
    [
    :name,
    [:name, :id],
    ]
  end
end
