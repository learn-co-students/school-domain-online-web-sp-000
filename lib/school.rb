# code here!


class School
  attr_accessor :school, :hash

  def initialize(name)
    @school = name
    @hash = {}
  end

  def roster
    @hash
  end

  def add_student(name, grade)
    if@hash.has_key?(grade)
      @hash[grade] << name
    else
      @hash[grade] = [] << name
    end
  end

  def grade(grade)
    @hash[grade]
  end

  def sort
    @hash.sort.map{|k, v| [k, v.sort]}.to_h
  end
end
