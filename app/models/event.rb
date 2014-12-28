# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  title        :string(255)      not null
#  private      :boolean          default(FALSE)
#  information  :text             default(""), not null
#  publish_date :datetime         not null
#  place_id     :integer
#  from_date    :datetime
#  to_date      :datetime         not null
#  user_id      :integer
#  host_id      :integer          not null
#  host_type    :string(255)      not null
#  facebook_url :string(255)
#  external_url :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Event < ActiveRecord::Base
  include Commentable
  include PostTarget
  include PostPublisher
  include Likeable

  validates :title, presence: true
  validates :to_date, presence: true
  validates :host_id, presence: true
  validates :host_type, presence: true

  #validates_datetime :publish_date, on_or_after: lambda { DateTime.now }, before: :to_date
  #validates_datetime :to_date, after: :from_date
  #validates_datetime :to_date, after: lambda { 1.minute.from_now }
  #validates_datetime :from_date, :on_or_after => lambda { 3.month.ago }, if: 'from_date.present?'

  before_validation :set_publish_date

  def set_publish_date
    if publish_date.present?
      self.publish_date = [DateTime.now, publish_date].max
    else
      self.publish_date = DateTime.now
    end
  end

  belongs_to :host, polymorphic: true
  belongs_to :localization, :class_name => 'Place', :foreign_key => 'place_id'

  has_many :events_assistances
  has_many :participants, through: :events_assistances, source: :user
end
