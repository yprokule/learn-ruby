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

def ask_width
    print "Enter object's width "
    return gets.to_i
end

def ask_lenght
    print "Enter object's length "
    return gets.to_i
end

def calc_square
#
# Calculate square
#

    width = ask_width
    length = ask_lenght

    puts "Object's square is #{ width * length}"

end


say_hello

for i in [ 'Tom','John', 'Rob' ]
    greet_person(i)
end

greet_person

calc_square
