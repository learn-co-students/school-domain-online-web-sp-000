
class School
attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(name, grade)
    roster[grade] = [name]
    roster.each do |name|
      roster[:name]
    end
  end

end