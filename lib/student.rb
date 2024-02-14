class Student
    attr_reader :name, 
                :age, 
                :scores,
                :average_score

    def initialize(student_hash)
        @name = student_hash[:name]
        @age = student_hash[:age]
        @scores = []
    end

    def log_score(new_score)
        @scores << new_score
    end

    def grade
        total_score = @scores.inject(0) {|sum, score| sum + score}
        @average_score = total_score.to_f / @scores.count
    end
end
