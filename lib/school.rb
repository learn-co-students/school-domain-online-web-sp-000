class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster.has_key?(grade) ? roster[grade] << name : roster[grade] = [name]
        end
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
