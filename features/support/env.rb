require 'appium_lib'
require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'humanize'
require_relative 'page_helper'
require_relative 'appium_custom'

$wait = Selenium::WebDriver::Wait.new(timeout: 60)

appium_txt = "#{Dir.pwd}/android/appium.txt"
caps = Appium.load_appium_txt(file: appium_txt)

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

World(PageObjects)