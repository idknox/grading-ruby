require "grades"

class Students
  def initialize(file)
    @file = file
  end

  def process_all
    file = File.open(@file, "rb")
    students = JSON.parse(file.read)
    students.values.map { |grades| Grades.new(grades) }
  end

  def in_decline_count
    process_all.select { |grades| grades.in_decline? }.length
  end

  def not_in_decline_count
    process_all.reject { |grades| grades.in_decline? }.length
  end
end
