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
        "PERSON. Name #{@name}\nPERSON. Age: #{@age}"
    end
end

person1 = Person.new

#person1.set_name = 'Tom'
#person1.set_age = 15

person1.age=18
person1.name='Tommy'

person1.introduce
person1.print_age

puts '----------------------------------------'
puts person1.name
puts person1.age
puts person1
puts '----------------------------------------'
