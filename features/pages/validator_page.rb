require 'calabash-cucumber/ibase'

class ValidatorPage < Calabash::IBase

  def trait
    "UITextFieldLabel text:'Credit Card Number'"
  end

  def input_field
    trait
  end

  def tap_input_field
    touch(input_field)
  end

  def validate_button
    "button marked:'Validate Credit Card'"
  end

  def tap_validate_button
    touch(validate_button)
  end

  def error_for_long(error_message)
    "UILabel text:'#{error_message}'"
  end
end