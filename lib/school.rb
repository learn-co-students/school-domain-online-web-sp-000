# code here!
class School
  attr_accessor :roster, :student, :grade # First, we set the getter and setter methods

  def initialize(roster) # Second, we intiliaze our roster
    @roster = {} # Third, set our roster equal to an empty hash
  end

  def add_student(name, grade) # Fourth, we create a method that takes the name and grade of the students.
    if @roster.include?(grade) == false # We then check to see if our hash includes a key with the value of the grade already
      @roster[grade] = [] # If it does not, we create a new key and set the value of that key to be an empty array
    end

    @roster[grade] << name # Once we determine whether or not a key for the grade exists, we add the student as a value to the corresponding grade key

  end

  def grade(grade) # Fifth, create a method that accepts the grade as an argument
    @roster[grade] # Then return the value from the hash and key. Ex. "roster[9] => ["names associated with key"]"
  end

  def sort # Finally, we create a method that accepts no arguments
    @roster.each do |grade, name| # We iterate over the hash, looking at the grade key and name value
      @roster[grade] = name.sort # For every key of grade, we take the names associated with them and sort them alphabetically
    end
  end

end
