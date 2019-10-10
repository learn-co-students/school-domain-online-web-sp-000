# code here!
class School

  def initialize(school_name)   #initialize method includes school_name and roster equal to empty hash
    @school_name = school_name #part 1
    @roster = {}    #empty hash {key => value}
  end

  def roster    #getter method for roster/ part 2
    @roster
  end

  def add_student(name, grade) #part 3
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false   #conditional if passed will create empty array for each grade
      @roster[grade] = []
    end
    @roster[grade] << name    #pushes name to empty array based on which grade given as argument
  end

  def grade(grade)     #method to output names based on grade given
    @roster[grade]
  end

  def sort            #method to sort each grade's names in alpahabetical order
    @roster.each do |grade, name|
      @roster[grade] = name.sort    #.sort reposnsible for alpahabetical
    end
  end
end
