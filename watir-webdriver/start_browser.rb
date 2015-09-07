# require 'watir-webdriver'

# b = Watir::Browser.new (:chrome)

# b.close()
# b.quit()

# string1 = "I am a string\n"
# string = "Now is #{Time.now.to_s}"
# print string1
# puts string.size


# puts '%30d%s' %['123', 'test']
# str1 = 'why always'
# str1 << ' ' 
# str1 << "me\n"
# puts str1

# str1.concat(33)
# puts str1 * 10

# str = 'hello'
# puts str.capitalize
# puts str

# puts str.capitalize!
# puts str

# str = 'www.17baidu.com'
# puts str[4]
# puts str[1..-1]
# puts str[1...-1]
# puts str[0, 4]
# puts str[/\d+/]
# puts str[/\w+/]
# puts str.slice(1..3)


# str = "www.17test.info\r\n"
# puts str.chomp!
# # puts str.chomp('info')
# str = '     watir-webdriver    '
# puts str.strip
# puts str.strip!
# str = nil
# puts str.empty?

# puts 'www.baidu.com'.end_with?('com')
# puts 'www.baidu.com'.start_with?('www')

# str = 'baidu.com\n'
# str = 'baidu.com'
# puts str.chomp.eql?('baidu.com')

str = 'www.17test.info'
puts str.gsub(/\d/, '*')
puts str.gsub(/(\d)/, '<\1>')



