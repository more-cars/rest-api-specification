@REQ_MCA-3816
Feature: Create PRICE Node
  As an API contributor
  I want to be able to create PRICES
  So I can fill gaps in the database

  @RULE_MCA-3827
  Rule: Read-only properties cannot be overridden by the user when creating a PRICE

    @TEST_MCA-3828
    Scenario: Expecting read-only properties to be ignored when creating a PRICE
      When the user creates a "PRICE" "Base Price" with the following data
        | key           | value      | datatype |
        | price         | 59990      | number   |
        | currency_code | EUR        | string   |
        | country_code  | DE         | string   |
        | id            | 1234       | number   |
        | created_at    | 2025-01-01 | string   |
        | updated_at    | 2025-01-01 | string   |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
