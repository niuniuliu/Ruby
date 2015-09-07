# Open Browser
require 'selenium-webdriver'
# chrome
dr = Selenium::WebDriver.for :chrome

# dr = Selenium::WebDriver.for :ff
# dr = Selenium::WebDriver.for :ie

=begin
sleep 1
dr.manage.window.maximize()
sleep 1
dr.manage.window.resize_to(800, 600)
sleep 1
# dr.get('http://www.baidu.com')
dr.navigate.to('http://www.baidu.com')
sleep 1
puts dr.title
puts dr.current_url
dr.navigate.to('http://news.baidu.com')
sleep 1
puts dr.title
puts dr.current_url
dr.navigate.back()
sleep 1
dr.navigate.forward()
sleep 1
=end



# Close Browser
# dr.quit()
