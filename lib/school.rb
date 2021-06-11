class School
    attr_accessor :name, :roster
    
    
    def initialize(name)
    @name = name
    @roster = Hash.new{|h,k| h[k] = [] }
    end

def add_student(name, grade)
    roster[grade].push(name)
end

def grade(grade)
    return roster[grade]
end

def sort
   roster.each do |k, v|
        v.sort!
    end
end

end
