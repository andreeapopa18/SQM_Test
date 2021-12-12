require 'rubygems'
require 'selenium-webdriver'


options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--ignore-certificate-errors')
options.add_argument('--disable-popup-blocking')
options.add_argument('--disable-translate')


driver = Selenium::WebDriver.for :chrome, options: options
#2.
driver.get "http://collaborative.ase.ro/Pasul1.0.aspx"

#3.
element = driver.find_element:id=>"RadioButton2"
element.click
sleep 5
element = driver.find_element :id => "Button1"
element.click

#4.
element=driver.find_element:id=>"CheckBoxList1_0"
element.click

element=driver.find_element:id=>"CheckBoxList1_4"
element.click

element=driver.find_element:id=>"CheckBoxList1_9"
element.click

sleep 5

list = driver.find_element(:name, 'ListBox1')
selection = list.find_elements(tag_name:'option')
driver.action.key_down(:control).perform
selection[0].click
selection[2].click
selection[9].click
driver.action.key_up(:control).perform

sleep 5

element = driver.find_element :id => "Button1"
element.click

#5.
element=driver.find_element:id=>"CheckBoxList1_1"
element.click
sleep 5

list = driver.find_element(:name, 'ListBox1')
selection = list.find_elements(tag_name:'option')
driver.action.key_down(:control).perform
selection[1].click
selection[6].click
driver.action.key_up(:control).perform
sleep 5

element = driver.find_element :id => "Button1"
element.click

#6.
element=driver.find_element:id=>"TextBox00"
element.send_keys "1"

element=driver.find_element:id=>"TextBox01"
element.send_keys "2"

element=driver.find_element:id=>"TextBox10"
element.send_keys "3"

element=driver.find_element:id=>"TextBox11"
element.send_keys "4"

element=driver.find_element:id=>"TextBox20"
element.send_keys "5"

element=driver.find_element:id=>"TextBox21"
element.send_keys "6"

sleep 5

element = driver.find_element :id => "Button1"
element.click

#7.
element = driver.find_element :id => "Button1"
element.click

sleep 5

element=driver.find_element(:name, 'ctl21')
element.send_keys "9"

element=driver.find_element(:name, 'ctl25')
element.click

element = driver.find_element :id => "Button1"
element.click

#8.
element = driver.find_element :id => "Button1"
element.click
sleep 5
element = driver.find_element(:name, 'Button1')
element.click

driver.quit