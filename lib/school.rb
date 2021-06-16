# code here!

class School
 attr_accessor :name, :roster
    
    def roster=(var)
        @roster = var
    end

    def roster
        @roster
    end

    def initialize(name)
        @name = name
        @roster = {}
        
    end

    # def add_student(student, grade)
    #     @roster[grade] ||= []
    #     @roster[grade] << student
        
        
    #  end

    def add_student(student, grade)
        if @roster.include?(grade)
            @roster[grade] << student
        else 
            @roster[grade] = []
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade] 
    end

    def sort
        sorted = {}
         @roster.each do |grade , names|
            sorted[grade] =  names.sort
         end
         sorted
    end


end