#!/usr/bin/ruby 

require 'rubygems'
require 'oyster'

spec = Oyster.spec do
  name  'myprog --  purpose of the program'

  description <<-EOS
    program description
  EOS

  synopsis <<-EOS
    myprogram [options] --option FILE
  EOS

  author 'Tumas Bajoras <hanniph@gmail.com>'

  copyright <<-EOS
    (c) 2010 Tumas Bajoras. This program is free software, distributed under
    the MIT license. You are free to use it for whatever purpose you see fit.
  EOS
end

class App
  VERSION = "0.0.1"

  def parsed_options?
    @opst = spec.parse
    true
  end

  def run
    if parsed_options? 
      # program logic
    end
  end
end

App.new.run
