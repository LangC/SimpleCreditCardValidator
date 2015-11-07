@verify_CR_Digit_2
Feature: Credit card validation.
  Credit card numbers must be exactly 16 characters.

  @long_2
  Scenario: Credit card number is 17 digits.
    Given I wait to see a navigation bar named "Simple Credit Card Validator"
    When I enter "12345678901234567" into input field called "Credit Card Number"
    When I click the "Validate Credit Card" button
    Then I should be able to see "Credit card number is too long."

  @short_2
  Scenario: Credit card number is 15 digits.
    Given I wait to see a navigation bar named "Simple Credit Card Validator"
    When I enter "123456789012345" into input field called "Credit Card Number"
    When I click the "Validate Credit Card" button
    Then I should be able to see "Credit card number is too short."

  @correct_2
  Scenario: Credit card number is 16 digits.
    Given I wait to see a navigation bar named "Simple Credit Card Validator"
    When I enter "1234567890123456" into input field called "Credit Card Number"
    When I click the "Validate Credit Card" button
    Then I should be able to see "The credit card number is valid!"

  @union_2
  Scenario Outline: Verify random digit
    Given I wait to see a navigation bar named "Simple Credit Card Validator"
    When I enter "<input>" into input field called "Credit Card Number"
    When I click the "Validate Credit Card" button
    Then I should be able to see "<output>"

     Examples:
       |                input                |                   output                   |
       |               123456                |      Credit card number is too short.      |
       |      12345678901234567890           |      Credit card number is too long.       |
       |      1234567890123456               |      The credit card number is valid!      |



