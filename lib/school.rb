# code here!
class School
  #use .new to create
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do |key, val|
      new_hash[key] = val.sort
    end
    return new_hash
    #sorted_by_key = Hash[@roster.sort_by {|key,val| key}.to_h]
  end
end
