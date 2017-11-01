#!/bin/env ruby

vcs = 'a1'

def evaluate_it(vcs)
    case vcs
        when 'p4' ,'p3'
            puts "#{vcs} is too old"
        when 'o1' ,'o2'
            puts "#{vcs} is mid term"
        when 'a1' , 'a2'
            puts "#{vcs} is Alpha !!!"
        else
            puts "Unsupported version #{vcs}"
    end
end

[ 'a1', 'o1', 'p4', 'o2', 'p3', 'a2', 'beta' ].each do | version |
    evaluate_it(version)
end
