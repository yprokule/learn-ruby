#!/bin/env ruby

my_rand = rand(100)

attempts = 10

print "Please enter your name: "

# read the inpute and remove trailing 'newline'
gamer = gets.chomp

while attempts >= 1
    puts "#{gamer} - You have #{attempts} attempts left"

    puts "Please make your choice"
    user_choice = gets.to_i

    if user_choice > my_rand
    then
        puts "Error. Your choice is higher than actual value"
    elsif user_choice < my_rand
    then
        puts "Error. Your guess is lower than actual value"
    elsif user_choice == my_rand
        puts "Congrats, #{gamer}! Coorect answer is #{my_rand}"
        exit 0
    end
    attempts -= 1
end

puts "Sorry #{gamer}. U didn't guess the number: #{my_rand}"
exit 0
