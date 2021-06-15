class School
attr_accessor :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name,level)
    @roster[level] ||= []
    @roster[level] << name 
    end

    def grade(level)
    @roster[level]
    end 
    
    def sort
        new_hash = {}
        @roster.keys.sort.each do |number|
        new_hash[number] = @roster[number].sort
            @roster.sort
        end
        new_hash
    end 
end
#school = School.new("Bayside High School")