@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3825
  Rule: Unknown properties are ignored when creating a PRICE

    @TEST_MCA-3826 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a PRICE
      When the user creates a "PRICE" "Base Price" with the following data
        | key           | value | datatype |
        | price         | 59990 | number   |
        | currency_code | EUR   | string   |
        | country_code  | DE    | string   |
        | thimbleweed   | park  | string   |
      Then the response should contain the following properties
        | key           | value | datatype |
        | price         | 59990 | number   |
        | currency_code | EUR   | string   |
        | country_code  | DE    | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
