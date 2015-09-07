require 'date'

p Date.constants.sort

Date.constants.sort.each {|con| p con}

Date.constants.sort.each {|con| print eval("#{Date}::#{con}").inspect, "\n" }

