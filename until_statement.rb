#!/bin/env ruby

iter = 10

until iter == 0
    puts format("There is %3d attempts left", iter)
    iter -= 1
end
