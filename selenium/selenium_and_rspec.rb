require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

describe "Form" do
	before(:all) do
		@driver = Selenium::WebDriver.for :firefox
		@driver.navigate.to 'http://bit.ly/watir-webdriver-demo'
	end

	after(:all) do
		@driver.quit
	end
	
	it "should set name as Rodrigo Tolledo" do
		name_text_area = @driver.find_element(:id, 'entry_0')
		name_text_area.send_keys "Rodrigo Tolledo"
	end

	it "should select Ruby" do
		@driver.find_element(:id, 'entry_1').find_element(:tag_name => 'option', :value => 'Ruby').click
	end

	it "should select 'A programming language'" do
		@driver.find_element(:id, 'group_2_1').click
	end

	it "should select '1.9.2'" do
		@driver.find_element(:id, 'group_3_3').click
	end

	it "should submit the form" do
		@driver.find_element(:name, 'submit').click
	end

	it "should get a confirmation message with the title 'Obrigado!'" do
		@driver.title.should eql("Obrigado!")
	end
end
