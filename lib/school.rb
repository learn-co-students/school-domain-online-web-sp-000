# code here!
class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if roster.has_key?(grade)
            roster[grade] << student_name
        else
            roster[grade] = [student_name]
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort!
        end
    end



end