# code here!
class School
  attr_reader :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

  def add_student(name, grade)

    self.roster[grade] ||= []
    #if self.roster[grade] already exists, leave it alone
    #else set self.roster[grade] = []
    self.roster[grade] << name

    #if @roster.has_key?(grade)
    #  @roster[grade] << name
    #else
    #  @roster[grade] = [name]
  #end
  end

  def grade(grade)
    self.roster[grade]
  end

def sort
  self.roster.each do |grade, name_array|
    self.roster[grade]= name_array.sort
  end
end



end
