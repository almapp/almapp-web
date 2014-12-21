# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  slug         :string           not null
#  private      :boolean          default("false")
#  description  :text             not null
#  publish_date :datetime         not null
#  place_id     :integer
#  from_date    :datetime
#  to_date      :datetime         not null
#  user_id      :integer
#  host_id      :integer          not null
#  host_type    :string           not null
#  facebook_url :string
#  external_url :string
#  created_at   :datetime
#  updated_at   :datetime
#

class Event < ActiveRecord::Base
  include Commentable
  include Posteable
  include PostPublisher
  include Likeable

  validates :title, presence: true
  validates :to_date, presence: true
  validates :host_id, presence: true
  validates :host_type, presence: true

  validates_datetime :publish_date, after: lambda { 5.minute.from_now }, before: :to_date, if: 'publish_date.present?'
  validates_datetime :to_date, after: :from_date
  validates_datetime :to_date, after: lambda { 1.minute.from_now }
  validates_datetime :from_date, :on_or_after => lambda { 3.month.ago }, if: 'from_date.present?'

  belongs_to :host, polymorphic: true

  has_many :event_assistances
  has_many :participants, through: :event_assistances, source: :user

  extend FriendlyId
  friendly_id :title, use: :slugged
end
