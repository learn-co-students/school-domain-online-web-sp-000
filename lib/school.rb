# code here!
class School
  attr_reader  :school_name, :roster
    def initialize(school_name)
          @school_name = school_name
            roster = []
            @roster = roster
    end

    def add_student=(student)
     @student = student
     @roster << student
    end
    def add_student
         @roster
    end
  end

end
