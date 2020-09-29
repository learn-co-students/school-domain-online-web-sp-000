# code here!
class School
    attr_accessor :school, :roster
    
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student_name, grade)
        # the hash key's value is only set once. 
        # If the value is other than false or nil, new values are no longer assigned
        # the following is the same as roster[grade] || roster[grade] = []
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        # return a {} with a list of the students from the roster hash
        # the {} should have an array of students sorted alpabetically
        sorted_students = {}
        roster.each do |grade, students|
            sorted_students[grade] = students.sort
        end
        sorted_students
    end
end


