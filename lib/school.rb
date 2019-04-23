class School
  attr_accessor :roster, :page_count, :genre, :add_student
  attr_reader :title, :roster


  def initialize(title)
    @title = title
    @roster = {}
  end

  def add_student(name, num)
      @roster[num] = [] if @roster[num].nil?
      @roster[num] << name
  end

  def grade(grade)
     @roster[grade]
  end

  def sort()
    sorted_keys = @roster.keys.sort{ |a,b| a<=>b }
    sorted_roster = {}
    sorted_keys.each do |sorted_key|
      sorted_roster[sorted_key] = @roster[sorted_key].sort{ |a,b| a<=>b }
    end
    @roster = sorted_roster
  end
end
