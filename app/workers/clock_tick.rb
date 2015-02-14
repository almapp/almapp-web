class ClockTick
  include Sidekiq::Worker

  def perform
    puts 'tick'
  end
end