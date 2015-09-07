# Sample code from Programing Ruby, page 644
# modified by non author
require 'date'

d = Date.new(2000, 3, 31)
d = Date.today
p [d.year, d.month, d.day]
p [d.yday, d.mday, d.wday]

p [d.cwyear, d.cweek, d.cwday]
p [d.jd, d.mjd]
d1 = Date.commercial(d.cwyear, d.cweek, d.cwday)
p d1.to_s
p [d1.cwday, d1.wday]