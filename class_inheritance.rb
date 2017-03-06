#!/bin/env ruby
#
# Class represents a person
#

class Person

    attr_accessor :name, :age

    def introduce
        puts "My name is: #{@name}"
    end

    def print_age
        puts "My age is: #{@age}"
    end

    def raise_message
        raise "Raise is called"
    end

    def to_s
        # over-write method
        out = format("PERSON . %10s: %-15s", 'Name', @name)
        out += format("\nPERSON . %10s: %-15s", 'Age', @age)
    end
end

class Student < Person
    #
    # Represents a student in college/university
    #

    attr_reader :college, :group

    def college=(mcollege)
        # set the college name
        if mcollege.to_s == ''
            raise "College name cannot be empty"
        else
            @college = mcollege.to_s
        end
    end

    def group=(mgroup)
        # set the group name
        if mgroup.to_s == ''
            raise "Group cannot be empty"
        else
            @group = mgroup.to_s
        end
    end

    def to_s
        new = super.to_s
        new += format("\nSTUDENT. %10s: %-15s", 'College', @college)
        new += format("\nSTUDENT. %10s: %-15s", 'Group', @group)
    end
end

person1 = Person.new

person1.age=18
person1.name='Tommy'

person1.introduce
person1.print_age

puts '----------------------------------------'
puts person1.name
puts person1.age
puts person1
puts '----------------------------------------'

student1 = Student.new

student1.age = 18
student1.name = 'Robert'
student1.college = 'LUIF'
student1.group = 'ZM-1'

puts student1.name
puts student1.age
puts student1.college
puts student1.group

puts '----------------------------------------'
puts student1
puts '----------------------------------------'
