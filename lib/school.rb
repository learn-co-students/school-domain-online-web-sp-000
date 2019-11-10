class School
  
  attr_accessor :school, :roster
  
  def initialize(name)
    @school = name
    @roster = {}
  end

  # it 'is able to add students to different grades' do
  # expect(@school.roster).to eq({9 => ["Homer Simpson"], 10 => ["Jeff Baird", "Avi Flombaum"], 7 => ["Blake Johnson"]})
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

  # it 'is able to retreive students from a grade' do
  # expect(@school.grade(10)).to eq(["Avi Flombaum", "Jeff Baird"])
  def grade(n)
    roster[n]
  end

  # it 'is able to sort the students' do
  # expect(@school.sort).to eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
  def sort
    roster.sort_by { |k, v| v.sort! }.reverse!
    roster.sort.to_h
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