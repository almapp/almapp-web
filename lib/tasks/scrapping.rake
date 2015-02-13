namespace :scrapping do
  desc "Reload courses from book"
  task courses: :environment do
    loader = UCCoursesLoader.new
    loader.load_courses(current_year, current_period)
  end

end
