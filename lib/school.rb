require 'pry'
class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end



  def school
    @school
  end

  def add_student (name, grade)
    if @roster.include?(grade)
          @roster[grade] << "#{name}"
    else
      @roster[grade] = []
      @roster[grade] << "#{name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

def sort
  hash = {}
  @roster.each do |grade, name|
      hash[grade] = []
      hash[grade] = name
    name.sort! { |alpha, beta| alpha <=> beta }

  end
    # @roster = hash.sort
    end
end
