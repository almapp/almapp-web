# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  email       :string(255)      not null
#  url         :string(255)
#  facebook    :string(255)
#  twitter     :string(255)
#  information :text             default("")
#  created_at  :datetime
#  updated_at  :datetime
#

class Group < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include EventPublisher
  include Likeable

  validates :email, presence: true, uniqueness: true, format: /\A[a-z0-9]+[a-z0-9\._-]*@[a-z0-9\.]+\.[a-z]{2,5}\z/i
  validates :name, presence: true

  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :faculties

  has_many :groups_subscribers
  has_many :subscribers, through: :groups_subscribers, source: :user
  has_many :events, -> { order(to_date: :desc) }, as: :host
end
