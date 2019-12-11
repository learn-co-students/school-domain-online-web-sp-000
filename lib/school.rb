# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
    @name=name
    @roster = {}
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end


  def grade(grade)
    roster.detect do |x, y|
      if x == grade
        return y
      end
    end
  end

  def sort
  nu_hash = {}
  roster.each do |x, y|
    nu_hash[x] = y.sort
  end
  nu_hash
end

end
