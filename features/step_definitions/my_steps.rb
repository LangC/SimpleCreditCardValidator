Given (/^I wait to see a navigation bar named "([^"]*)"$/) do |title|
  wait_for_elements_exist(["UINavigationBar marked:'#{title}'"], :timeout => 30)
end

When(/^I enter "([^"]*)" into input field called "([^"]*)"$/) do |card_number, textfield_name|
  touch("UITextFieldLabel text:'#{textfield_name}'")
  wait_for_keyboard
  keyboard_enter_text(card_number)
end

When(/^I click the "([^"]*)" button$/) do |verify_button|
  touch("button marked:'#{verify_button}'")
end

Then(/^I should be able to see "([^"]*)"$/) do |error_message|
  wait_for_elements_exist(["UILabel text:'#{error_message}'"], :timeout=>10)
  screenshot_embed()
  # screenshot_embed(:name=>"#{Time.now.strftime('%Y%m%d-%H%M%S')}")
end
