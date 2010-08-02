#!/usr/bin/ruby -w

path = ARGV[0]
raise "specify filename to create" unless path

File.open(path, 'w', 0755) do |f|
  f.puts "#!/usr/bin/ruby -w" 
end
