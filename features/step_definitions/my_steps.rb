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

Then(/^I should see different text prompt after I give different digital card number :$/) do |table|
  # table is a table.hashes.keys # => [:123456, :Credit card number is too short.]
  touch("UITextFieldLabel text:'Credit Card Number'")
  # wait_for_keyboard
  # keyboard_enter_text(@table.hash("input"))
  table.hashes.each do |row|
    puts row["code"]
  end

  touch("button marked:'Validate Credit Card'")
  wait_for_elements_exist(["UILabel text:#{@table.hash("output")}"], :timeout=>10)
end


# When(/^I enter card number into input field called "([^"]*)"$/) do |textfield_name, table|
#   # table is a table.hashes.keys # => [:123456]
#   touch("UITextFieldLabel text:'#{textfield_name}'")
#   wait_for_keyboard
#   keyboard_enter_text()
# end
#
# Then(/^I should be able to see :$/) do |table|
#   # table is a table.hashes.keys # => [:Credit card number is too short.]
#   pending
# end