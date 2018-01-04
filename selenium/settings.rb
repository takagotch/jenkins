#
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :remote, :url => "http://localhost:8888/wd/hub", :desired_capabilities => :firefox

#
java -jar selenium-server-standalone-2.31.0.jar -rolhub

#
C:\selenium>java -ja selenium-server-standalone-2.31.0.jar -role webdriver -hub http://jenkins_server:8888/grid/register



