# code here!
class School
    attr_reader :name, :roster

    #Init
    def initialize(name)
        @name = name
        @roster = {

        }
    end

    def add_student(student_name, student_grade)
        #We need to add the student to their designated grade in the roster hash
        if (@roster[student_grade] != nil)
            @roster[student_grade] << student_name
        else
            @roster[student_grade] = [student_name]
        end        
    end   

    def grade(student_grade)
        @roster[student_grade]
    end
    
    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end    
end