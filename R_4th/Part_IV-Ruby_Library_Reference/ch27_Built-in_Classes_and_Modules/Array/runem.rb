def get_binding(param)
  return binding
end

#~ require_relative 'eval'

Dir.glob("*.*").each do |rb_file| 
  puts rb_file	
  File.open(rb_file,"r") do |f|    
    f.readlines.each do |line|
      print eval(line).inspect, "\n"
      #~ @lstr = ""
      #~ @lstr << line.chomp
      #~ b = get_binding(line)
      #~ str = b.eval("param").chomp
      #~ instance_eval(str)      
    end    
  end
  
  # puts instance_eval @lstr
  #~ puts @lstr
end

