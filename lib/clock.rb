require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

every(1.day, 'Refresh courses', at: '04:30', tz: 'UTC -03:00') { Sidekiq::Client.enqueue(Scrapper, current_year, current_period) }