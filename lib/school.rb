# code here!
class School
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(stud, grade)
		@roster[grade] = [] if ! @roster[grade]
		@roster[grade] << stud
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each {|k, arr|
			# puts '--------------'
			# puts @roster[k]
			@roster[k] = arr.sort
			# puts '*'
			# puts @roster[k]
			# puts '--------------'
		}
	end

end