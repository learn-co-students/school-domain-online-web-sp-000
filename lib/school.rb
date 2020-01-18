require "pry"
class School

	def initialize(name)
		@name = name
		@roster = {}
	end

	def name
		@name
	end

	def roster
		@roster
	end

	def add_student(name, grade)
		if @roster.keys.include?(grade)
			@roster[grade] << name
		else
			@roster[grade] = []
			@roster[grade] << name
		end
	end

	def grade(given_grade)
		@roster.collect do |grade, name_array|
			if grade == given_grade
				name_array
			end
		end.flatten.compact
	end

	def sort
		@roster.each do |grade, name_array|
			@roster[grade] = name_array.sort
		end
		@roster
	end
end
# binding.pry