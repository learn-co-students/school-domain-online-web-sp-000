class School
attr_accessor :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(year)
    roster[year]
  end

  def sort
    roster.each{|grade,names| names.sort!}
    Hash[roster.sort]
  end 

  # def sort
  #   sorted_roster = {}
  #   self.roster.each do |grade, students|
  #     sorted_roster[grade] = students.sort
  #   end
  #   sorted_roster
  # end

end

eau_gallie = School.new("Eau Gallie H.S.")
eau_gallie.add_student("Alexander", 9)
eau_gallie.add_student("Leif", 10)
eau_gallie.add_student("Brenton", 10)
puts eau_gallie.sort