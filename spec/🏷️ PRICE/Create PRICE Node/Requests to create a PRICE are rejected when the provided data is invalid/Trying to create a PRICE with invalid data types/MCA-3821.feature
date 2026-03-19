@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3819
  Rule: Requests to create a PRICE are rejected when the provided data is invalid

    @TEST_MCA-3821
    Scenario: Trying to create a PRICE with invalid data types
      When the user tries to create a "PRICE" "Base Price" with the following data
        | key           | value | datatype |
        | price         | 59990 | boolean  |
        | currency_code | EUR   | boolean  |
        | country_code  | DE    | boolean  |
      Then the request should be rejected with status code 400
