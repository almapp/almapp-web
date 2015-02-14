namespace :scrapping do
  desc "Reload courses from book"
  task courses: :environment do
    Sidekiq::Client.enqueue(Scrapper, current_year, current_period)
  end

end
