@REQ_MCA-5544
Feature: Update PRICE Node
  As an API contributor
  I want to be able to update a PRICE
  So I can add missing information or fix incorrect data

  @RULE_MCA-5553
  Rule: The response contains all properties that are officially specified when updating a PRICE

    @TEST_MCA-5554 @implemented
    Scenario: Expecting all properties to be returned when updating a PRICE
      Given there exists a "PRICE" "Base price"
      When the user updates the node "Base price" with the following data
        | key           | value |
        | price         | 59992 |
        | price_year    | 2022  |
        | currency_code | EUR_2 |
        | country_code  | DE_2  |
      Then the request should be confirmed with status code 201
      And the response should contain the following properties
        | key           | value |
        | price         | 59992 |
        | price_year    | 2022  |
        | currency_code | EUR_2 |
        | country_code  | DE_2  |
