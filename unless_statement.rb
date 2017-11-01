#!/bin/env ruby

[ 1, 2, 3, 4, 5, 6, 7, 8, 9 ].each do | iter |
    unless iter % 2 == 0
        puts '-' * 40
        puts "#{iter} is odd"
        puts "#{iter} % 2 != 0"
        puts '-' * 40
    else
        puts '-' * 40
        puts "#{iter} is even"
        puts "#{iter} % 2 == 0"
        puts '-' * 40
    end
end
