require "spec_helper"

describe "Grades" do
  it "instantiates with an array" do
    Grades.new([])
  end

  it "returns an empty array if given an empty array" do
    grades = Grades.new([])

    processed_grades = grades.process

    expect(processed_grades).to match_array([])
  end

  it "processes grades" do
    input = [6,3,5,4,3,4,4,5]
    output = [:down,:up,:down,:down,:up,:even,:up]
    grades = Grades.new(input)
    processed_grades = grades.process

    expect(processed_grades).to eq(output)
  end

  it "can determine if a student is in decline" do
    input = [10, 10, 10, 9, 9, 8, 8, 8, 8, 7]
    grades = Grades.new(input)
    status = grades.in_decline?

    expect(status).to eq(true)
  end

  it "can parse a file of student grades" do
    file = "./data/grades.json"

    students = Students.new(file)

    expect(students.in_decline_count).to eq(27)
    expect(students.not_in_decline_count).to eq(73)
  end
end