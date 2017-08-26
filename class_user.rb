#!/bin/env ruby

class Person
    #
    # Defines basic info about person
    #

    attr_reader :name, :surname

    def name=(fname)
        # attribute writer
        if fname != '' and fname != nil
            @name = fname
        else
            raise "First name cannot be empty"
        end
    end

    def surname=(lname)
        # attribure writer
        if lname != '' and lname != nil
            @surname = lname
        else
            raise "Last name cannot be empty"
        end
    end

    def initialize(fname,lname)
        @name = fname
        @surname = lname
    end

    def introduce
        puts "Hi there! I'm #{@surname}, #{@name}"
    end

end

class User < Person
    #
    # Represents registered user
    #

    attr_accessor :birthday, :email

    def initialize(fname,lname, dob, fmail)
        super(fname, lname)
        @birthday = dob
        @email = fmail
        @subscriptions = []
    end

    def introduce
        super
        puts "I was born on #{@birthday}"
        puts "My email : #{@email}"
    end

end
