@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5545
  Rule: Requests to update a PRICE are accepted when the provided data is valid

    @TEST_MCA-5546 @implemented
    Scenario: Updating a PRICE with valid data
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price" with the following data
        | key           | value |
        | price         | 59992 |
        | price_year    | 2022  |
        | currency_code | EUR   |
        | country_code  | AT    |
      Then the request should be confirmed with status code 200
