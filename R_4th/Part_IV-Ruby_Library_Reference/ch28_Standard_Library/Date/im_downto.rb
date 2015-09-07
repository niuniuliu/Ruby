require 'date'

d = Date.new(2014,5,21)
jd = Date.new(2014,5,21).jd - 3
d.downto(jd) {|d| puts d}             #=> 2014-05-21
                                      #=> 2014-05-20
                                      #=> 2014-05-19                                     