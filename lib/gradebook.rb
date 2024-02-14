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
        @students.each do |student|
           if student.average_score < threshold
            @students_b << student
           end
        end 
        @students_b
    end
end
