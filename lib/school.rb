class School
  
   attr_accessor :name, :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, student_grade)
    if !@roster.include?(student_grade)
      @roster[student_grade] = []
      @roster[student_grade] << student_name 
    else
      @roster[student_grade] << student_name
    end 
  end
  
  def grade(grade)
    @roster[grade]
  end 

  def sort
    #@roster_sort = {}
    @roster.each do |grade_hash, students_array|
     # grade_hash => students_array # .sort
     # @roster_sort << [grade_hash] = 
      @roster[grade_hash] = students_array.sort
    end
  end
end


=begin 
describe "#sort" do
    it 'is able to sort the students' do
      @school.add_student("Homer Simpson", 9)
      @school.add_student("Bart Simpson", 9)
      @school.add_student("Avi Flombaum", 10)
      @school.add_student("Jeff Baird", 10)
      @school.add_student("Blake Johnson", 7)
      @school.add_student("Jack Bauer", 7)

      # key order does not matter; this is testing that the students in each respective value are in alphabetical order
      expect(@school.sort).to eq({7 => ["Blake Johnson", "Jack Bauer"], 9 => ["Bart Simpson", "Homer Simpson"], 10 => ["Avi Flombaum", "Jeff Baird"]})
    end
  end
end
=end 




