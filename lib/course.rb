class Course
    attr_reader :name, :capacity, :students

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
    end

    def full?
        @capacity == 0
    end

    def enroll(student_num)
        @students << student_num
        @capacity -= 1
    end
end
