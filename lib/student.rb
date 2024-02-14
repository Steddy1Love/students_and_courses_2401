class Student
    attr_reader :name, :age

    def initialize(student_hash)
        @name = student_hash[:name]
        @age = student_hash[:age]
    end
end
