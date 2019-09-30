# code here!

class School 
  
  attr_accessor :name, :roster 
  def initialize(name)
    @name = name
    @roster = {}
    @testsort = {}
  end 
  
  def add_student(name, key)
    if @roster.has_key?(key)
      @roster[key] << name
    else 
      @roster[key] = [name]
    end 
  end 
  
  def grade(grade)
    @roster[grade]
    
  end 
  def sort 
    sort_new = {}
    @roster.each do |key,value|
      sort_new[key] = roster[key].sort 
    end 
    sort_new

    
  end 
end 