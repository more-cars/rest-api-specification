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
        | key             | value      | datatype |
        | rating_value    | 93         | number   |
        | scale_minimum   | 0          | number   |
        | scale_maximum   | 100        | number   |
        | scale_direction | up         | string   |
        | id              | 1234       | number   |
        | created_at      | 2025-01-01 | string   |
        | updated_at      | 2025-01-01 | string   |
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
