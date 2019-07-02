# code here!
class School
    attr_accessor :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, name|
            sorted[grade] = name.sort
        end
        sorted
    end
end