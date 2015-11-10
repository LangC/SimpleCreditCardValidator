Given(/^I touch the input filed$/) do
  validator_page = page(ValidatorPage).await
  @current_page = validator_page
  @current_page.tap_input_field
  wait_for_keyboard
end

When(/^I enter "([^"]*)" into input field$/) do |card_number|
  keyboard_enter_text(card_number)
end

When(/^I click the button$/) do
  # validator_page = page(ValidatorPage).await
  @current_page.tap_validate_button
end

Then(/^A warning "([^"]*)" popup$/) do |error_message|
  wait_for_elements_exist(@current_page.error_for_long(error_message), :timeout=>10)
end