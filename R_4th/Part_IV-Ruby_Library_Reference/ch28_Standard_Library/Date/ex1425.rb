# Sample code from Programing Ruby, page 644
# modified by non author because Date.day_fraction_to_time() is gone now
require 'date'

now = DateTime.now
year = now.year
year += 1 if now.month == 12 && now.day > 25
xmas = DateTime.new(year, 12, 25, 0, 0, 0)

diff = xmas.yday - now.yday

puts "It's #{diff} days to Christmas"

# puts 24 - now.day_fraction * 24.0
# h,m,s,frac = Date.day_fraction_to_time(diff)
# s += frac.to_f
h = (diff - 1) * 24.0 + 24.0 - now.day_fraction * 24.0
m = ((h / 24.0 - (h / 24.0).to_i) * 24 - ((h / 24.0 - (h / 24.0).to_i) * 24).to_i) * 60.0 
s = (m - m.to_i) * 60.0

puts "That's #{h.to_i} hours, #{m.to_i} minutes, #{s} seconds"
puts "Christmas #{year} falls on a #{xmas.strftime('%A')}"
