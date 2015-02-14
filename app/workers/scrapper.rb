class Scrapper
  include Sidekiq::Worker

  def perform(year = current_year, period = current_period)
    loader = UCCoursesLoader.new
    loader.load_courses(year, period)
  end
end