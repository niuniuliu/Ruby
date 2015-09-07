require "selenium-webdriver"
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

browser = Selenium::WebDriver.for :chrome
browser.get "http://www.baidu.com"

input = wait.until{browser.find_element(id: 'kw1')}
input.send_key "selenium"

button = wait.until{browser.find_element(id: 'su1')}
button.click()



strxpath = '//*[@id="page"]/a[1]/span[1]'

puts "%.4s\\%.2s\\%s" % ["1","2","3"]

pageNavigator = wait.until{browser.find_element(xpath: strxpath)}
pageNavigator.click

news = wait.until{browser.find_element(id: '/html/body/div/div[3]/div/div/a')}
news.click