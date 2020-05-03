class School

  roster = {GRADES[0..12]}

  def add_student=(name, grade)
    @name = name
    @grade = grade
    roster[:grades].collect do |grades|
      if grades == @grade
        GRADES << @name
      end
    end
  end
end
