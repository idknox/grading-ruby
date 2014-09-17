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
end