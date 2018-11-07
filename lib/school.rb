# code here!
class School
    attr_accessor :roster, :name
   
 
    def initialize (school)
        @school = school
        @roster = {}        
    end

    def add_student (name, grade)        
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [name]      
       end
    end
    
    def grade (grade)
        @roster[grade]
    end

    def sort
        @roster.keys.each do |student|
           @roster[student].sort!
          end
        roster
    end
end