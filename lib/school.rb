require "pry"
class School

      attr_reader :roster

      def initialize(name)
        @roster = {}
      end

      def add_student(name, grade)
        # ||= or equals
        @roster[grade] ||= []
        @roster[grade].push(name)
      end

      def grade(grade)
        @roster[grade]
      end

      def sort

         @roster.values.each {|x| x.sort!}
         @roster
         #@roster.values.sort
        # roster_sorted = @roster
        # roster_sorted.sort


        #binding.pry

      end
end