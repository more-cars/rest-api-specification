@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3822
  Rule: The response contains all specified properties when creating a PRICE

    @TEST_MCA-3824 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a PRICE
      When the user creates a "PRICE" "Base Price" with the following data
        | key           | value | datatype |
        | price         | 59990 | number   |
        | currency_code | EUR   | string   |
        | country_code  | DE    | string   |
      Then the response should contain the following properties
        | key           | value | datatype |
        | price         | 59990 | number   |
        | currency_code | EUR   | string   |
        | country_code  | DE    | string   |
