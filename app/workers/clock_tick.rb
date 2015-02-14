class ClockTick
  include Sidekiq::Worker

  def perform
    puts 'tick'
    c = Campus.first
    c.name = "#{c.name}1"
    c.save!
  end
end