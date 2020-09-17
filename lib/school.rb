# code here!
class School
  
  def initialize(name)
    @name = name
    @hash = {}
  end
  
  def roster
    @hash
  end
  
  def add_student(name, grade)
    if @hash.keys.include?(grade)
      @hash[grade] << name
    else
      @hash[grade] = []
      @hash[grade] << name
    end
  end
  
  def grade(grade)
    @hash[grade]
  end
  
  def sort
    @hash.each do |key, value|
      @hash[key] = value.sort!
    end
  end
 
end