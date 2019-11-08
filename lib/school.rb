
class School
#ROSTER = Hash.new
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


      def add_student(name, grade)
      roster[grade] ||= []
        roster[grade] << name
      end
        #if roster has a "grade" key push name to roster-grade, else "||=" - or equal to new array
          #   if ROSTER.has_key?[grade]
          #     ROSTER[grade] << name
          #   else
          #     ROSTER[grade] = [name]

            def grade(grade)
            roster[grade]
            end

            def sort
              sorted_rost = {}
              roster.each do |grade, name|
              sorted_rost[grade] = name.sort
              end
              sorted_rost
              end
end
