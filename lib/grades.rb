class Grades
  def initialize(grades)
    @grades = grades
  end

  def process
    output=[]
    @grades.each_with_index do |grade, i|
      unless i == 0
       if grade > @grades[i-1]
         output << :up
       elsif grade < @grades[i-1]
         output << :down
       else
         output << :even
       end
      end
    end
    output
  end
end