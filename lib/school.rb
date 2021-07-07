class School
  
  attr_accessor :school, :roster
  
  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    hash = self.roster
    if hash.has_key?(grade)
      puts 'build new grade'
      hash[grade] << name
    else
      hash.store(grade, [name])
    end
    self.roster = hash
  end

  def grade(n)
    roster[n]
  end

  def sort
    roster.sort_by { |k, v| v.sort! }.reverse!.to_h
  end
end

# init school class
school = School.new('Test School')

# mock students for add_student
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 10)

# mock students created for add_student
school.add_student("Homer Simpson", 9)
school.add_student("Jeff Baird", 10)
school.add_student("Avi Flombaum", 10)
school.add_student("Blake Johnson", 7)

#school.roster

# search for students by grade
school.grade(10)


# students created to test student sort
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)

# sorting students by grade
school.sort