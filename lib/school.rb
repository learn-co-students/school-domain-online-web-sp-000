class School
  attr_reader :school_name, :roster, :new_roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.keys.include? grade
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @new_roster = {}
    @roster.sort.each do |key, value|
      @new_roster[key] = value.sort
    end
    @new_roster
  end
  
end

