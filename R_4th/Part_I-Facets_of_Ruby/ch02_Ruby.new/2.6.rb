#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

str = "For example, you could write a pattern that matches a string containing the text Perl or the
text Python using the following regular expression: /Perl|Python/"

puts str.match(/Perl|Python/)
puts str.match(/Python|Perl/)
puts str.match(/P(erl|ython)/)

/\d\d:\d\d:\d\d/ # a time such as 12:34:56
t = Time.now.to_s
puts t.match(/\d\d:\d\d:\d\d/)
puts str.match(/Perl.*Python/)# Perl, zero or more other chars, then Python
puts str.match(/Perl Python/) # Perl, a space, and Python
puts str.match(/Perl *Python/) # Perl, zero or more spaces, and Python
puts str.match(/Perl +Python/) # Perl, one or more spaces, and Python
puts str.match(/Perl\s+Python/) # Perl, whitespace characters, then Python
puts str.match(/Ruby (Perl|Python)/) # Ruby, a space, and either Perl or Python

puts str =~ /pattern/
puts str =~ /text/
puts str =~ /Perl|Python/

if str =~ /pattern/
  puts "The string holds the word #{/pattern/}"
end

puts str.gsub(/pattern/, 'regular expression')