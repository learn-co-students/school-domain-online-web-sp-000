class School
    attr_accessor :roster, :student_name
    attr_reader :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        if @roster[student_grade]
            @roster[student_grade] << student_name
        
        else
            @roster[student_grade] = []
            @roster[student_grade] << student_name 
        end    
    end

    def grade(student_grade)
        @roster[student_grade]
    end
 
    def sort
        @roster.each do |student_grade, student_name|
            @roster[student_grade] = student_name.sort!
        end
    end
              
end

