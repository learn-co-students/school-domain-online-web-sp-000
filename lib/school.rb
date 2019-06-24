class School          # School class refers to a "model" in the domain model context.
  attr_accessor = :school :roster :grade
  attr_reader = :add


  def initialized(add_student)
    @add_student = add_student
  end
end
