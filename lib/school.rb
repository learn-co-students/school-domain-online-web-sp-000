class School
  attr_accessor
  attr_reader :school, :roster, :sorted_roster

  roster = {}
  sorted_roster = {}

   def initialize(school)
     @school = school
     @roster = {}
   end

   def add_student(name, grade)
      if !roster[grade]
        roster[grade] = []
      end
        roster[grade] << name
   end

  ## the following does that same as method above ##
  #def add_student(name, grade)
  #     roster[grade] ||= []
  #     roster[grade] << name
  #end

  def grade(grade)
    roster[grade]
  end

  def sort()
    roster.each do |grade, names|
      names.sort!
    end
    roster.sort.to_h
  end


end
