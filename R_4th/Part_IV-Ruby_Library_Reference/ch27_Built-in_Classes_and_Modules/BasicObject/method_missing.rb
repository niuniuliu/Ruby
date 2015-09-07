class Roman
  def roman_to_int(str)
    # ...
  end
  def method_missing(methId)
    str = methId.id2name
    roman_to_int(str)
  end
end

r = Roman.new
p r.iv          #=> 4
p r.xxiii       #=> 23
p r.mm          #=> 2000