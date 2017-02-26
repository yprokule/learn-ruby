#!/bin/env ruby
#
# Class represents a person
#

class Person

    def introduce
        puts "My name is: "
    end

    def age
        puts "My age is: "
    end
end

person1 = Person.new

person1.introduce
person1.age
