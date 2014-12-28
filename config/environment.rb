# Load the Rails application.
require File.expand_path('../application', __FILE__)

SECOND_SEMESTER_STARTING_MONTH = 7

def current_year
  2015
  #Time.new.year
end

def current_semester
  1
  #(Time.new.month >= SECOND_SEMESTER_STARTING_MONTH) ? 2 : 1
end

# Initialize the Rails application.
Rails.application.initialize!
