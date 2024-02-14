class Gradebook
    attr_reader :instructor, 
                :courses, 
                :students,
                :list,
                :students_b

    def initialize(instructor, course)
        @instructor = instructor
        @courses = course
        @students = []
    end

    def add_course(new_course)
        @courses << new_course
    end

    def add_students(new_students)
        @students << new_students
    end

    def list_all_students
        @list = Hash[@courses.zip(@students)]
    end

    def students_below(threshold)
       student = @students.each do |student|
            student.average_score < threshold
        end 
        @students_b.push(student)
    end
end
