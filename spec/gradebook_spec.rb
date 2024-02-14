require 'rspec'
require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
    it 'exists' do
        gradebook = Gradebook.new("Ari", ["Calculus"])
        expect(gradebook).to be_instance_of(Gradebook)
    end

    it 'adds courses' do
        gradebook = Gradebook.new("Ari", ["Calculus"])
        gradebook.add_course("Algebra III")
        expect(gradebook.courses).to eq(["Calculus", "Algebra III"])
    end

    it 'has a list of students and courses' do
        gradebook = Gradebook.new("Ari", ["Calculus"])
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})
        gradebook.add_course("Algebra III")
        gradebook.add_students(student1)
        gradebook.add_students(student2)
        require 'pry'; binding.pry
        expect(gradebook.list_all_students).to eq({"Calculus"=>student1, "Algebra III"=>student2})
    end
end