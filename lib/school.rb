# code here!
require 'pry'

class School

    attr_reader :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name,grade)
        if roster[grade]
            roster[grade] << student_name
        else
            roster[grade] = []
            roster[grade] << student_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each { | grade, students |
            self.roster[grade] = students.sort
        }
    end

end
