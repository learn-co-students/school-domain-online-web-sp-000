class School
    attr_accessor :name, :roster

	def initialize(name)
        @name = name
        @roster = {}
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
        sorted_roster = {}
        @roster.each do |student, grade|
          sorted_roster[student] = grade.sort
        end
        sorted
      end
end
