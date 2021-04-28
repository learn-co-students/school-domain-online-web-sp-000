require 'pry'

class School
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !roster.has_key?(grade)
            roster[grade] = [student]
        elsif roster.has_key?(grade) && !roster[grade].include?(student)
            roster[grade] << student
        else
            puts "Cannot add duplicate student to roster."
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        new_hash = {}
        roster.each do |grade, students|
            new_hash[grade] = students.sort
        end
        new_hash
    end

end

school_1 = School.new("Bayside High School")
school_1.add_student("Peyton", 16)
school_1.add_student("Shashank", 16)
school_1.add_student("Simba", 3)
school_1.sort
