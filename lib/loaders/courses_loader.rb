class CoursesLoader
  def load_courses(year, semester)
    raise NotImplementedError, "Subclasses must define 'load_courses'."
  end
end