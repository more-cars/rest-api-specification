@REQ_MCA-3073
Feature: Create RATING Node
  As an API contributor
  I want to be able to create RATINGS
  So I can fill gaps in the database

  @RULE_MCA-3084
  Rule: Read-only properties cannot be overridden by the user when creating a RATING

  @TEST_MCA-3085 @implemented
  Scenario: Expecting read-only properties to be ignored when creating a RATING
    When the user creates a "RATING" "93 Percent" with the following data
      | key             | value      |
      | rating_value    | 93         |
      | scale_minimum   | 0          |
      | scale_maximum   | 100        |
      | scale_direction | up         |
      | id              | 1234       |
      | created_at      | 2025-01-01 |
      | updated_at      | 2025-01-01 |
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
