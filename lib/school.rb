# code here!

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end
    
    def add_student(name, grade)
        @student = name
        @grade = grade
    
        if @roster.include? grade 
            @roster [grade] << name
        else
            @roster [grade] = []
            @roster [grade] << name
        end
    end

    def grade(grade)
        @grade = grade
        @roster[grade]
    end

    def sort
        sort = {}
        @roster.each do |grade, name|
            name.sort!
        end
    end
end