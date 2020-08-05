class School
    attr_accessor :name, :roster
    

def initialize(name, roster = {})
    @name = name
    @roster = {}
end

require "pry"
def add_student(name, grade)
    if @roster.keys.include?(grade)
        @roster[grade] << name
    else
        @roster[grade] = []
        @roster[grade] << name
    end
end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |grade, values|
            @roster[grade] = values.sort
end
@roster
end

end
