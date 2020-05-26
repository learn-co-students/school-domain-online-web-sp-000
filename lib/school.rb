class School
#1. ROSTER=[]
#2. def roster
#     {}
#3. @@roster
attr_accessor :roster


  def initialize(school)
    @name=school
    @roster={}
  end



  def add_student(name,grade)
    if !@roster[grade]
      @roster[grade]=[]
      @roster[grade]<<name

    else
      @roster[grade]<<name
    end

  def grade(grade)
    @roster[grade]

  end

  def sort
    @roster.each do |key,value|
      @roster[key]=value.sort
    end
  end




  end



end
