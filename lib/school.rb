
  class School

    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      roster[grade] = [] unless roster[grade]
      roster[grade] << name
    end

    def grade(num)
      roster[num]
    end

    def sort
      roster2 = {}
      roster.each do |key, values|
        roster2[key] = values.sort
      end
      roster2
    end

end
