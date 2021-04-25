# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(name, grade)

        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade_key, student_array|
            sorted_hash[grade_key] = student_array.sort
        end
        sorted_hash
    end
end
