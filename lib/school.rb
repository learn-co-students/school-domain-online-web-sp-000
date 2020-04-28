class School
    attr_reader :name, :roster

    def initialize(name)
       @name = name
       @roster = {}
    end

    def add_student(student, grade)
        if @roster.has_key?(grade) == false 
            @roster[grade] = []
            @roster[grade] << student
        elsif @roster.has_key?(grade) == true
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, student_array|
            student_array.sort!
        end
    end
end