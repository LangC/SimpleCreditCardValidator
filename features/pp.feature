@pp
Feature: Credit card validation.
  Credit card numbers must be exactly 16 characters.

  @long
  Scenario: Credit card number is 17 digits.
    Given I touch the input filed
    When I enter "12345678901234567" into input field
    When I click the button
    Then A warning "Credit card number is too long." popup

#