class Scrapper
  include Sidekiq::Worker
  sidekiq_options :retry => 1

  def perform(year = current_year, period = current_period)
    UCCoursesLoader.load_courses(year, period)
  end
end