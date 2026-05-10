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
        | key           | value |
        | price         | 59990 |
        | price_year    | 2020  |
        | currency_code | EUR   |
        | country_code  | DE    |
        | thimbleweed   | park  |
      Then the response should contain the following properties
        | key           | value |
        | price         | 59990 |
        | price_year    | 2020  |
        | currency_code | EUR   |
        | country_code  | DE    |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
