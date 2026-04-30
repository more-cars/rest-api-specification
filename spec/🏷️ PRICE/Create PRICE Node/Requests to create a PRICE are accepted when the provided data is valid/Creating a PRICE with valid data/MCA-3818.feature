@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3817
  Rule: Requests to create a PRICE are accepted when the provided data is valid

    @TEST_MCA-3818 @implemented
    Scenario: Creating a PRICE with valid data
      When the user creates a "PRICE" "Base Price" with the following data
        | key           | value |
        | price         | 59990 |
        | price_year    | 2020  |
        | currency_code | EUR   |
        | country_code  | DE    |
      Then the request should be confirmed with status code 201
      And the response should return the "PRICE" "Base Price"
