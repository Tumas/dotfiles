#!/usr/bin/ruby -w

require 'fileutils'
require 'rubygems'
require 'oyster'
require 'yaml'

FILE = "tasks.yml"

spec = Oyster.spec do
  name 'taskystack.rb - small program to manage daily tasks'

  description <<-EOS
    taskystack is a small program that helps you manage your daily tasks. 
    It saves its tasks to yaml file so that you could easily take a peek into that file.
  EOS

  synopsis <<-EOS
    taskystack --push your_task
    taskystack --pop 
    taskystack --show
  EOS

  string :push, :desc => 'Push another task to a stack!'

  flag :pop, :default => false, 
       :desc => 'Pop your latest task from a stack!'

  flag :show, :default => false,
       :desc => "Please remind me the latest task. However, you could always cat tasks file"

  author 'Tumas Bajoras <hanniph@gmail.com>'

  copyright <<-EOS
    (c) 2010 Tumas Bajoras. This program is free software, distributed under
    the MIT license. You are free to use it for whatever purpose you see fit.
  EOS
end

begin 
  opts = spec.parse
  FileUtils.touch FILE unless File.exists?(FILE)

  File.open(FILE, "r+") do |yaml_file|
    @array = YAML::load(yaml_file)
    @array = [] unless @array 

    if opts[:show]
      puts @array.last
    elsif opts[:pop]
      puts @array.pop
    elsif opts[:push]
      @array.push opts[:push]
    else
      raise 'nothing to do'
    end
  end

  File.open(FILE, "w").print YAML::dump(@array) if opts[:pop] || opts[:push] 

rescue Exception => e
  puts e
end
