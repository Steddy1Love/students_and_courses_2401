class Gradebook
  attr_reader :instructor, :courses, :students

  def initialize(instructor, course)
    @instructor = instructor
    @courses = course
    @students = []
  end

  def add_course(new_course)
    @courses << course
  end

  def add_students(new_students)
    @students << new_students
  end

  def list_all_students
    @list = {}
    @courses.zip(@students) do |course, student|
        @list[course] = student
    end 
end
