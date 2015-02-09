# == Schema Information
#
# Table name: events_assistances
#
#  id         :integer          not null, primary key
#  event_id   :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class EventsAssistance < ActiveRecord::Base
  validate :validates_event
  validates :user_id, presence: true

  def validates_event
    if event_id.present?
      errors.add(:event_id, 'Event cannot be from the past.') unless event.to_date > DateTime.now
    else
      errors.add(:event_id, 'Must assist to an event.')
    end
  end

  belongs_to :event
  belongs_to :user

end
