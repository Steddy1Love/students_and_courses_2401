require 'rspec'
require './lib/student'

RSpec.describe Student do
  it "exists" do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan).to be_instance_of(Student)
  end

  it 'has attributes' do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan.name).to eq("Morgan")
    expect(morgan.age).to eq(21)
  end

  it 'has a scores array' do
    morgan = Student.new({name: "Morgan", age: 21})
    expect(morgan.scores).to eq([])
  end
end
