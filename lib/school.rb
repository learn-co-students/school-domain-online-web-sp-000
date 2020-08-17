# code here!
require 'pry'
class School
  attr_reader :name, :roster
  #@roster = {}
  #had to define the setter ourselves because this is not a standard property, cna't use attr
  #super interesting: if i put @roster here, the method won't be able to access it...
  #i've seen people putting class constants here, but i guess not instance variables....
  #note: if we use attr stuff you're creating methods that WILL create new instance variables ONLY when the methods are called
  #they're not created at first.

  def initialize(name)
    @name = name
    @roster = {}
    #had to define the setter ourselves because this is not a standard property, cna't use attr

  end

def add_student(studentname, grade)
  #create new grade if neccessary
  if !@roster.keys.include?(grade)
    @roster[grade] = []
  end
  #add to array
  @roster[grade] << studentname
  end


def grade(gradenumber)
  @roster[gradenumber]
end

def sort
  @roster.each do | gradelevel, studentsinthatgrade |

    @roster[gradelevel] = studentsinthatgrade.sort
    #must save, otherwise array stays intact
  end

end


end

#========

lakeside = School.new('lakeside high')
lakeside.add_student("Homer Simpson", 9)
lakeside.add_student("Bart Simpson", 9)
lakeside.add_student("Avi Flombaum", 10)
lakeside.add_student("Jeff Baird", 10)
lakeside.add_student("Blake Johnson", 7)
lakeside.add_student("Jack Bauer", 7)
puts lakeside.name
puts lakeside.roster
lakeside.sort
