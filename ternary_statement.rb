#!/bin/env ruby

os = 'rpm'
family = os.downcase == 'rpm' ? "Red Hat" : "Debian"

puts "Fedora is #{family} family"

os = 'deb'
family = os.downcase == 'rpm' ? "Red Hat" : "Debian"

puts "Ubuntu is #{family} family"
