#!/bin/env ruby

some_var = nil

if some_var
    puts "Variable 'some_var' is not 'nil'"
else
    puts "Sorry Variable 'some_var' is 'nill'"
end

name = 'Tom'

if ! name
    puts "Sorry 'username' is required"
elsif name.to_s.downcase == 'admin'
    puts "Welcome #{name}"
else
    puts "What's up #{name}"
end
