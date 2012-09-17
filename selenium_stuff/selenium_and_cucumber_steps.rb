Before do
	@driver = Selenium::WebDriver.for :firefox
end

Given /^a user is in the form page$/ do
	@driver.navigate.to 'http://bit.ly/watir-webdriver-demo'
end

When /^the user fill in all the form$/ do
    name_text_area = @driver.find_element(:id, 'entry_0')
	name_text_area.send_keys "Rodrigo Tolledo"
	@driver.find_element(:id, 'entry_1').find_element(:tag_name => 'option', :value => 'Ruby').click
	@driver.find_element(:id, 'group_2_1').click
	@driver.find_element(:id, 'group_3_3').click
end

When /^submit the form$/ do
	@driver.find_element(:name, 'submit').click
end

Then /^the user must see a confirmation message$/ do
	@driver.title.should eql("Obrigado!")
end

After do
	@driver.quit	
end
