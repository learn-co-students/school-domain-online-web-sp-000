# code here!
class School
    attr_reader :name, :roster

    def initialize(name)
        @name=name
        @roster={}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if roster[grade] == nil
          roster[grade] = []
        end
        roster[grade] << student
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end