#!/usr/bin/env ruby
require 'erb'
require 'tilt'
template = Tilt::ERBTemplate.new('test.html.erb')
File.open("test.html", "wb").write template.render
