require_relative 'methods/click_elements_methods'

# click on web element

When(/^I click on element having (.+) "(.*?)"$/) do |type, access_name|
  validate_locator type
  click(type,access_name)
end

Then(/^I forcefully click on element having (.+) "(.*?)"$/) do |type, access_name|
	validate_locator type
	click_forcefully(type, access_name)
end

# double click on web element

Then(/^I double click on element having (.+) "(.*?)"$/) do |access_type, access_value|
  	validate_locator type
  	double_click(access_type,access_value)
end

#steps to click on link

Then(/^I click on link having text "(.*?)"$/) do |access_name|
    click("link",access_name)
end

Then(/^I click on link having partial text "(.*?)"$/) do |access_name|
    click("partial_link_text",access_name)
end