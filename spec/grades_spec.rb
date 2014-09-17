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
end