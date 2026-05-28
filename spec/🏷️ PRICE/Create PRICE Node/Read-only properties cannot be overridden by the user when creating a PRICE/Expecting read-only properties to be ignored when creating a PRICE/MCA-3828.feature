@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3827
  Rule: Read-only properties cannot be overridden by the user when creating a PRICE

  @TEST_MCA-3828 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a PRICE
    When the user creates a "PRICE" "Base Price" with the following data
      | key           | value      |
      | price         | 59990      |
      | price_year    | 2020       |
      | currency_code | EUR        |
      | country_code  | DE         |
      | id            | 1234       |
      | created_at    | 2025-01-01 |
      | updated_at    | 2025-01-01 |
    Then the response should contain an ID
    And the response should contain the following keys
      | key        |
      | created_at |
      | updated_at |
    But the response should NOT contain the ID 1234
    And the response should NOT contain the following properties
      | key        | value      |
      | created_at | 2025-01-01 |
      | updated_at | 2025-01-01 |
