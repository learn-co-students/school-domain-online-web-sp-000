# code here!
class School
  
  attr_accessor :school, :roster
  attr_reader :name
  
   def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(s_name, s_grade)
    if @roster[s_grade]
      @roster[s_grade] << s_name
    else
      @roster[s_grade] = []
      @roster[s_grade] << s_name
    end
  end
  
  def grade(s_grade)
    @roster[s_grade]
  end
  
  def sort
    n_roster = {}
    @roster.each do |d_key, d_value|
        d_value = d_value.sort
        n_roster[d_key] = d_value
    end
    n_roster
  end
  
end

