require 'pry'
class School
    attr_reader :name
    attr_reader :roster
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(sname, grade)
        @roster.keys.include?(grade) ? @roster[grade] << sname : @roster[grade] = [sname]
    end

    def grade(key)
        @roster[key]
    end

    def sort
        @roster.sort.map{|g,s| [g, s.sort]}.to_h
    end
end