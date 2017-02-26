#!/bin/env ruby

def say_hello()
#
# Ask for a name
#
    puts "What's your name ?"
    print "My name is "

    sname = gets.to_s.chomp

    puts "How it's going #{sname}?"

end

def greet_person(p_name='Unknown')
#
# Say hi to person called p_name
#

    puts "Hi #{p_name}"

end

def calc_square ( width, length )
#
# Calculate square
#

    puts "Object's width is #{width}"
    puts "Object's length is #{length}"
    puts "Object's square is #{ width * length}"

end


say_hello

for i in [ 'Tom','John', 'Rob' ]
    greet_person(i)
end

greet_person

calc_square(10, 15)
