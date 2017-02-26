#!/bin/env ruby
#
# Class represents a person
#

class Person

    def set_name=(p_name)
        @name = p_name
    end

    def set_age=(p_age)
        @age = p_age
    end

    def introduce
        puts "My name is: #{@name}"
    end

    def age
        puts "My age is: #{@age}"
    end
end

person1 = Person.new

person1.set_name = 'Tom'
person1.set_age = 15

person1.introduce
person1.age
