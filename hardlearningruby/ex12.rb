require 'open-uri'

open("https://www.ruby-lang.org/en") do |f|
	f.each_line {|line| p line}
	puts "base_uri: \n #{f.base_uri}"			#<URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
	puts "content_type: \n #{f.content_type}" 		#"text/html"
	puts "charset: \n #{f.charset}" 			# "iso-8859-1"
	puts "content_encoding: \n #{f.content_encoding}" 	#[]
	puts "last_modified: \n #{f.last_modified}" 	# Thu Dec 05 02:45:02 UTC 2002
end
