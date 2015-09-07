# require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :chrome
url = 'http://easonhan007.github.io/learn_ruby_the_hard_way.html'

def getpath(abc)
  if abc.is_a?(Integer)
    abc = abc.to_s
  end
  @abc = abc  
  @path = '//*[@id="page"]/div/div/div/div/article/div/div/div/div/ul/li['+abc+']/a'
  return @path 
end

dr.navigate.to url
for num in 1...3 do
  dr.find_element(:xpath, getpath(num)).click
  sleep 2

  htmlTitle = dr.title + '.html'
  htmlContent = dr.page_source
  txt = File.open("ruby/" + htmlTitle, "w+")
  txt.puts(htmlContent)
  txt.close
  htmlContent = ''

  puts num 
  dr.navigate.back()
  sleep 2

end



# puts dr.title
# driver 的其他方法
# window_handles : 返回当前所有打开浏览器的窗口句柄
# window_handle ： 返回当前的浏览器的窗口句柄
# page_source : 返回当前页面的源码
# visible? : 当前浏览器是否可见，并不保证支持所有浏览器
# dr.close


=begin
#Checkbox
require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'checkbox.html'))

dr.get file_path

# 选择所有的checkbox并全部勾上
dr.find_elements(:css, 'input[type=checkbox]').each {|c| c.click}
dr.navigate.refresh()
sleep 1

# 打印当前页面上有多少个checkbox
puts dr.find_elements(:css, 'input[type=checkbox]').size

# 选择页面上所有的input，然后从中过滤出所有的checkbox并勾选之
dr.find_elements(:tag_name, 'input').each do |input|
    input.click if input.attribute(:type) == 'checkbox'
end 
sleep 1

# 把页面上最后1个checkbox的勾给去掉
dr.find_elements(:css, 'input[type=checkbox]').last.click
sleep 3

dr.find_elements(:css, 'input[type=checkbox]').last.click
sleep 3

dr.find_elements(:css, 'input[type=radio]').last.click

sleep 2
dr.quit
=end



=begin
require 'selenium-webdriver'

  dr = Selenium::WebDriver.for :chrome
  # puts typeof(File.expand_path)

  file_path = 'file:///' + File.expand_path(File.join('.', 'form.html'))
  
  dr.get file_path

  # by id
  inputEmail = dr.find_element(:id, 'inputEmail')
  inputEmail.click
  

  # by name
  password = dr.find_element(:name, 'password')
  # password.click()
  password.send_keys('1321')
  
  # by tagname
  # puts dr.find_element(:tag_name, 'form')[:class]
  sleep 2
  
  # by class_name
  
  e = dr.find_element(:class, 'controls')
  dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', e)
  sleep 3

  # by link text
  link = dr.find_element(:link_text, 'register')
  # dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', link)
  sleep 3

  # by partial link text
  link = dr.find_element(:partial_link_text, 'reg')
  # dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', link)
  sleep 3

  # by css selector
  div = dr.find_element(:css, '.controls')
   dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', div)
  sleep 3


  # by xpath

  # dr.find_element(:xpath, '/html/body/form/div[3]/div/label/input').click

  sleep 3
  dr.quit

=end

=begin
require 'selenium-webdriver'

  dr = Selenium::WebDriver.for :chrome
  first_url = 'http://www.baidu.com'
  puts "now access #{first_url}"
  dr.get(first_url)
  sleep 1
  second_url = 'http://www.news.baidu.com'
  puts "now access #{second_url}"
  dr.get(second_url)
  sleep 1

  puts "back to #{first_url}"
  dr.navigate.back()
  sleep 1
  puts "forward to #{second_url}"
  dr.navigate.forward()
  sleep 1
  dr.quit

=end

=begin
 ＃ 打印页面的title和url
 require 'selenium-webdriver'

  dr = Selenium::WebDriver.for :chrome
  url = 'http://www.baidu.com'
  puts "now access #{url}"
  # dr.get url
  dr.navigate.to url
  sleep 1
  puts "title of current page is #{dr.title}"
  puts "url of current page is #{dr.current_url}"

  dr.quit
=end

=begin
# 调整浏览器大小
require 'selenium-webdriver'

  dr = Selenium::WebDriver.for :chrome

  dr.manage.window.resize_to(320,480)
  dr.get 'http://www.3g.qq.com'

  sleep 5
  dr.quit
=end

=begin
 # 浏览器最大化 
  require 'selenium-webdriver'

  dr = Selenium::WebDriver.for :chrome
  sleep 2
  puts 'maximize browser'
  dr.manage.window.maximize()
  sleep 2
  puts 'close browser'
  dr.quit
=end



=begin
# 获得tag_name
require 'selenium-webdriver'
url = %q{http://www.soso.com/}

dr = Selenium::WebDriver.for :chrome
dr.navigate.to url
sleep 1

# new_icon = dr.find_element(:class => 'ico_new')
new_icon = dr.find_element(:class => 'g')

puts new_icon.tag_name # ---> span
dr.quit
=end


=begin
require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :ff
url = 'http://www.baidu.com'
dr.navigate.to url
sleep 3
js = <<JS
    p = document.getElementById("kw")
    p.focus()
JS
 
dr.execute_script js
=end


=begin
require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :ff
url = 'http://www.soso.com'
dr.navigate.to url
sleep 3
js = <<JS
    q = document.getElementById("tb");
    q.style.border = "1px solid red";
JS
 
dr.execute_script js
=end


=begin
require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :firefox
url = 'http://www.soso.com'
dr.navigate.to url

# puts dr.title
# 其他方法
# window_handles : 返回当前所有打开浏览器的窗口句柄
# window_handle ： 返回当前的浏览器的窗口句柄
# page_source : 返回当前页面的源码
# visible? : 当前浏览器是否可见，并不保证支持所有浏览器

dr.close

=end


=begin
require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :firefox
url = 'http://www.soso.com'
dr.navigate.to url

# search_input = dr.find_element :id => 's_input'
search_input = dr.find_element :id => 'query'
search_input.send_keys 'webdriver'
search_input.submit
match = dr.current_url.match(/\b\w+$/) 
keyword = match[0] if match 

=end

=begin

require 'rubygems'
require 'selenium-webdriver'
dr = Selenium::WebDriver.for :firefox

url = 'http://www.baidu.com'

# 使用get方法
dr.get url
# 使用navigate方法，然后再调用to方法
dr.navigate.to url

=end

# require 'rubygems'
# require 'selenium-webdriver'
# dr = Selenium::WebDriver.for :firefox
# dr.get url
# 使用quit方法
# dr.quit
# 使用close方法
# dr.close





=begin
require 'rubygems'
require 'selenium-webdriver'
# 打开firefox
dr = Selenium::WebDriver.for :firefox
# dr = Selenium::WebDriver.for :ff
# 打开ie
# dr = Selenium::WebDriver.for :ie
# dr = Selenium::WebDriver.for :internet_explorer
# 打开chrome
# dr = Selenium::WebDriver.for :chrome
=end


=begin

require 'rubygems'
require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :firefox
driver = Selenium::WebDriver.for :chrome
# driver = Selenium::WebDriver.for :ff

driver.navigate.to "http://www.baidu.com"
sleep 3

# element = driver.find_element(:name, 'wd')
element = driver.find_element(:xpath, '//*[@id="kw"]')
element.send_keys "Hello WebDriver!"
element.submit

puts driver.title

driver.quit
=end





