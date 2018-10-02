#create domain model School class
class School

    attr_accessor :grade

     # intialized with empty has roster but will
     # have keys of grade levels, and values of arrays
     # of student names
     roster = {
       #{}"grade" => name
     }

    # allows name to be auto initialized when creating new
    # instance of school class
    def initialize(name)
      @name = name
    end
    # create school.name reader
    def name=(school_name)
      @name = school_name
    end
    # create school.name writer
    def name
     @name
    end

    # grade method that takes in grade as argument and then
    # finds that grade(key) in the hash and returns the value
    def grade(grade)
      roster.each do |x, y|
      if x == grade
          return y
        end
      end
    end

    # add student method that takes arguments of student name
    #and student grade. Creates the hash grade key and points it
    # to an empty array as the value of the key value pair.
    # then pushes the student name to that array.
    def add_student(name, grade)
      roster["grade"] = []
      roster["grade"].push(name)
    end

end

School.add_student("AC Slater", 9)
School.add_student("Kelly Kapowski", 10)
School.add_student("Schreech, 11")
School.roster
