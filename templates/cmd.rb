#!/usr/bin/ruby -w

# == Synopsis 
#   This is a sample description of the application.
#
# == Examples
#   This command does blah blah blah.
#     ruby_cl_skeleton foo.txt
#
#   Other examples:
#     ruby_cl_skeleton -q bar.doc
#     ruby_cl_skeleton --verbose foo.html
#
# == Usage 
#   ruby_cl_skeleton [options] source_file
#
#   For help use: ruby_cl_skeleton -h
#
# == Options
#   -h, --help          Displays help message
#   -v, --version       Display the version, then exit
#   TODO - add additional options
#
# == Author
#   Tumas Bajoras
#
# == Copyright
#   Copyright (c) 2010 Tumas Bajoras. Licensed under the MIT License:
#   http://www.opensource.org/licenses/mit-license.php

require 'optparse'
require 'ostruct'
require 'rdoc/usage'

class App
  VERSION = "0.0.1"

  def initialize(args, stdin)
    @args = args
    @stdin = stdin
    
    # defaults
    @options = OpenStruct.new
  end

  def run
    if arguments_valid? && parsed_options? 
      # process_arguments
      # process_command
    else
      puts "Wrong number of parameters. Run with -h for examples"
    end
  end

  private
 
  def arguments_valid?
    # TODO
    true if @args.length == 1
  end

  def parsed_options?
    opts = OptionParser.new
    opts.on('-h', '--help') { output_help }
    opts.on('-v', '--version') { output_version } 
    opts.parse!(@args) rescue return false

    # process options
    true
  end

  def output_version
    puts "#{File.basename(__FILE__)} version #{VERSION}"
  end
  
  def output_help
    puts RDoc::usage
  end

end

App.new(ARGV, STDIN).run
