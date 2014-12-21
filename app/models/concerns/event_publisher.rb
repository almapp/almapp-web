module EventPublisher
  extend ActiveSupport::Concern

  included do
    has_many :published_events, -> { order(to_date: :desc) }, as: :host, class_name: 'Event'
  end
end