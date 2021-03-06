#!/bin/env ruby
#
# Class represents a person
#

class Person

    attr_accessor :age
    attr_reader :name

    def name=(name)
        if name.to_s == ''
            raise "Every person has a name"
        else
            @name = name
        end
    end

    def initialize(name='Anonymous')
        puts "Person.new is called"
        self.name = name
    end

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
        out = format("PERSON . %10s: %-15s", 'Name', @name)
        out += format("\nPERSON . %10s: %-15s", 'Age', @age)
    end
end

class Student < Person
    #
    # Represents a student in college/university
    #

    attr_reader :college, :group

    def initialize
        super
        puts "Student.new is called"
    end

    def college=(mcollege)
        # set the college name
        if mcollege.to_s == ''
            raise "College name cannot be empty"
        else
            @college = mcollege.to_s
        end
    end

    def group=(mgroup)
        # set the group name
        if mgroup.to_s == ''
            raise "Group cannot be empty"
        else
            @group = mgroup.to_s
        end
    end

    def to_s
        new = super.to_s
        new += format("\nSTUDENT. %10s: %-15s", 'College', @college)
        new += format("\nSTUDENT. %10s: %-15s", 'Group', @group)
    end
end

class Sportfan < Person
    #
    # Represents a sport fan
    #

    def self.fc_kl(name)
        puts "Class method fc_kl called"
        Sportfan.new(name, 'football', 'FC KL')
    end

    def self.hc_kl(name)
        puts "Class method hc_kl called"
        Sportfan.new(name, 'hockey', 'HC KL')
    end

    def self.bc_kl(name)
        puts "Class method bc_kl called"
        Sportfan.new(name, 'basketball', 'BC KL')
    end

    attr_reader :team, :sport, :name

    def initialize(name, sport='football', team='FC KL')
        #self.name = name    # My name is
        super(name)
        self.team = team    # Best team ever
        self.sport = sport  # Football vs Basketball :)
    end

    def team=(team)
        if team.to_s == ''
            raise "U don't have a favorite team ???"
        else
            @team = team
        end
    end

    def sport=(sport)
        if sport.to_s == ''
            raise "U don't have a favorite sport ???"
        else
            @sport = sport
        end
    end

    def info
        puts "My name is #{name}"
        puts "I'm a SPOOOOOOORT Faaaaaaan!!!!"
        puts "The best team in #{self.sport} is '#{team}'"
    end

    def to_s
        out =  format("Sportfan . %10s: %-15s\n", 'Name', name)
        out += format("Sportfan . %10s: %-15s\n", 'Sport', sport)
        out += format("Sportfan . %10s: %-15s", 'Team', team)
    end

end


person1 = Person.new

person1.age=18
person1.name='Tommy'

person1.introduce
person1.print_age

puts '----------------------------------------'
puts person1.name
puts person1.age
puts person1
puts '----------------------------------------'

student1 = Student.new

student1.age = 18
student1.name = 'Robert'
student1.college = 'LUIF'
student1.group = 'ZM-1'

puts student1.name
puts student1.age
puts student1.college
puts student1.group

puts '----------------------------------------'
puts student1
puts '----------------------------------------'

fan1 = Sportfan.new('JJB')
fan1.info

fan1.name = 'JJ Updated'
fan1.sport = 'baseball'
fan1.team = 'BC KL'
fan1.info

puts fan1

fan2 = Sportfan.fc_kl('Tom')
puts fan2
puts '----------------------------------------'

fan3 = Sportfan.bc_kl('Bob')
puts fan3
puts '----------------------------------------'

fan4 = Sportfan.hc_kl('Handi')
puts fan4
puts '----------------------------------------'
