require "JSON"

class Grades
  def initialize(grades)
    @grades = grades
  end

  def process
    output=[]
    @grades.each_with_index do |grade, i|
      unless i == 0
        output << :up if grade > @grades[i-1]
        output << :down if grade < @grades[i-1]
        output << :even if grade == @grades[i-1]
      end
    end
    output
  end

  def in_decline?
    falls = 0
    process.each do |change|
      falls += 1 if change == :down
      falls = 0 if change == :up
    end
    falls >= 3
  end
end
