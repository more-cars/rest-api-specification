@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5551
  Rule: Requests to update a PRICE are rejected when the provided data is invalid

    @TEST_MCA-5552 @implemented
    Scenario: Trying to update a PRICE with invalid data types
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price" with the following data
        | key           | value |
        | price         | TEST  |
        | price_year    | TEST  |
        | currency_code | 1234  |
        | country_code  | 1234  |
      Then the request should be rejected with status code 400
