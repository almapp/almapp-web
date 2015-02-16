class CoursesLoader
  def self.load_courses(year, period)
    raise NotImplementedError, "Subclasses must define 'load_courses'."
  end
end