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
end