module EventPublisher
  extend ActiveSupport::Concern

  included do
    has_many :hosting_events, -> { order(to_date: :desc) }, as: :host, class_name: 'Event'

    has_many :events, -> { order(to_date: :desc) }, as: :host, class_name: 'Event' # Override with custom method if needed
  end
end