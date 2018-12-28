# code here!
class School
  def initialize(school_name)
    @this_school_name = school_name
    @this_roster = {}
  end
  def add_student(name, grade)
    if (!(@this_roster.key?(grade)))
      @this_roster[grade] = []
    end
    @this_roster[grade] << name
  end
  def roster
    @this_roster
  end
  def grade(grade)
    @this_roster[grade]
  end
  def sort
    new_hash = Hash[@this_roster.sort]
    new_hash.each do |key, names|
      new_hash[key] = names.sort
    end
  end
end
