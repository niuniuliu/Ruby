class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
    
  end

end

wday = RingArray["Sunday", "Monday", "Thuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

# p wday

# p wday[1]
# p wday[8]
# p wday[15]
# p wday[22]

