class School
  #attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name=name
    @roster={}
  end
  
  def add_student(name, grade)
    @roster[grade]||=[]
    @roster[grade] << name
  end
  
  def grade(grade)
    @grade=@roster[grade]
  end
  
  def sort
    @roster.map do |k,v|
      v.sort! {|a,b| a<=>b}
    end
    @roster
  end
end