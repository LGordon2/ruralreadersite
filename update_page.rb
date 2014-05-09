#!/usr/bin/env ruby
require 'erb'
require 'tilt'
require 'json'
require 'date'

#helper methods
def ordinal(number)
  abs_number = number.to_i.abs

  if (11..13).include?(abs_number % 100)
    "th"
  else
    case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
    end
  end
end
def ordinalize(number)
  "#{number}#{ordinal(number)}"
end
def capitalize_name(name)
  name.split.map {|name| name.split('-').map {|name| name.split("'").map {|name| name[0].upcase + name[1..-1].downcase}.join("'")}.join("-")}.join(" ")
end

template = Tilt::ERBTemplate.new('test.html.erb')
File.open("test.html", "wb").write template.render
