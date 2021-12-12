require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome, :switches => %w[--ignore-certificate-errors --disable-popup-blocking --disable-translate]
driver.get "http://google.com"

element = driver.find_element :name => "q"
element.send_keys "Cheese!"
element.submit

puts "Page title is #{driver.title}"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "cheese!" }

puts "Page title is #{driver.title}"

puts "Test Passed!" if wait.until {
    / is a food derived from milk that is produced in a wide range of flavors/.match(driver.page_source)
}

sleep 5
driver.quit