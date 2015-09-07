require 'date'

p Date.public_methods(false).sort
p Date.instance_methods(false).sort

p Date::new(2001,2,3)                                #=> #&lt;Date: 2001-02-03 ((2451635j,0s,0n),+0s,2299161j)>
p Date::jd(2451944)                                  #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::ordinal(2001,34)                             #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::commercial(2001,5,6)                         #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::parse('2001-02-03')                          #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Date::strptime('03-02-2001', '%d-%m-%Y')           #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p Time::new(2001,2,3).to_date                        #=> #&lt;Date: 2001-02-03 ((2451944j,0s,0n),+0s,-Infj)>

p d = Date::parse('3rd Feb 2001')                    #=> #<Date: 2001-02-03 ((2451944j,0s,0n),+0s,2299161j)>
p d.year                                             #=> 2001
p d.mon                                              #=> 2
p d.mday                                             #=> 3
p d.wday                                             #=> 6
p d += 1                                             #=> #<Date: 2001-02-04 ((2451945j,0s,0n),+0s,2299161j)>
p d.strftime('%a %d %b %Y')                          #=> "Sun 04 Feb 2001"