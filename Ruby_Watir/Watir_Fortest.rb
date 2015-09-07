require "selenium-webdriver"
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds


# browser = Selenium::WebDriver.for :internet_explorer
browser = Selenium::WebDriver.for :chrome
browser.get("http://www.baidu.com")

input = wait.until {browser.find_element(id: "kw1")}
SearchButton = wait.until {browser.find_element(xpath: '//*[@id="su1"]')}
input.click
input.send_keys "selenium"
SearchButton.click

Page2 = wait.until {browser.find_element(xpath: '//*[@id="page"]/a[1]/span[2]')}
Page2.click

News = wait.until {browser.find_element(xpath: '//*[@id="s_tab"]/a[1]')}
News.click

WebSearch = wait.until {browser.find_element(xpath: '//*[@id="s_tab"]/a[1]')}
WebSearch.click


Div1 = wait.until {browser.find_element(xpath: '//*[@id="1"]/h3/a')}
Div1.click


browser.quit