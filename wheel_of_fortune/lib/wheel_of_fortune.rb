#!/bin/env ruby

# this is initial 'secret' phrase
guess_me = 'How to learn how to code?'

# now it's splitted in separate words
guess_me_list = guess_me.split(' ')
hidden_list = guess_me.split(' ').map{|iter| iter.gsub(/[[:alnum:]]/, '_')}

letter_map = {}
guess_me.split('').inject(letter_map){|memo, iter| memo[iter.to_sym] = guess_me.split('').count(iter) ; memo }
puts letter_map

puts "Todays phrase:\n\t#{hidden_list.join(' ')}"

puts "please guess a letter"
guess = gets.to_s.chomp

guess_me_list.each_index do |word_idx|
    # parse each word from initial phrase
    #puts "Processing #{guess_me_list[word_idx]}"
    _update_me = hidden_list[word_idx]
    if guess_me_list[word_idx].split('').include?(guess)
        # current word has letter provided by user
        #p 'current word has letter provided by user'
        _word = guess_me_list[word_idx].split('')
        if  guess_me_list[word_idx].split('').count(guess) > 1
            # more than one occurence of guessed letter
            # e.g. "hello" has 2 occurances of 'l'
            #p 'multiple occurance'
            _idx = _word.each_index.select{|iter| _word[iter] == guess}
            _idx.each{|iter|_update_me[iter] = guess}
        else
            #puts 'single occurnace'
            _update_me[_word.index(guess)] = guess
        end
        hidden_list[word_idx] = _update_me
    end
end

puts hidden_list.join(' ')
