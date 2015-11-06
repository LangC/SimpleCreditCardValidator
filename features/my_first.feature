Feature: Credit card validation.
  Credit card numbers must be exactly 16 characters.

  Scenario: Credit card number is 17 digits.
    Given I wait to see a navigation bar named "Simple Credit Card Validator"
    When I enter "12345678901234567" into input field called "Credit Card Number"
    When I click the "Validate Credit Card" button
    Then I should be able to see "Credit card number is too long."
#
#  Scenario: Credit card number is 15 digits.
#    Given I wait to see a navigation bar named "Simple Credit Card Validator"
#    When I enter "123456789012345" into input field called "Credit Card Number"
#    When I click the "Validate Credit Card" button
#    Then I should be able to see "Credit card number is too short."
#
#  Scenario: Credit card number is 16 digits.
#    Given I wait to see a navigation bar named "Simple Credit Card Validator"
#    When I enter "1234567890123456" into input field called "Credit Card Number"
#    When I click the "Validate Credit Card" button
#    Then I should be able to see "The credit card number is valid!"



