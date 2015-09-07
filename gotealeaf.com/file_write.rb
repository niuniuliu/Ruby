# sample_file = File.open("simple_file.txt", "w+")
# sample_file.puts("another sample file of writing to a file.")
# sample_file.puts("another sample file of writing to a file.")
# sample_file.close
# puts  File.read("simple_file.txt")

# sample_file = File.open("simple_file.txt", "a+")
# sample_file.puts("another sample file of writing to a file.")
# sample_file.puts("another sample file of writing to a file.")
# sample_file.close
# puts  File.read("simple_file.txt")

w_mode = "w+"
a_mode = "a+"
file_name = "simple_file.txt"


File.open(file_name, a_mode) do |file|
  file << "Here we are with a new line of text\n"
end

# puts File.read("simple_file.txt")

x = File.readlines(file_name).each_with_index do |line, line_num|
  # p line
  # p line_num
end

p x.length
# p x.length
file = File.open(file_name, "a+") 
p file.read.split("\n").size

# File.delete("simple_file.txt")

require "pathname"
p Pathname.new(file).extname

p File::extname(file)

# p Dir.chdir('./')
# p Dir.pwd
d = Dir.new(".")
p file = d.read
p File.extname(file)