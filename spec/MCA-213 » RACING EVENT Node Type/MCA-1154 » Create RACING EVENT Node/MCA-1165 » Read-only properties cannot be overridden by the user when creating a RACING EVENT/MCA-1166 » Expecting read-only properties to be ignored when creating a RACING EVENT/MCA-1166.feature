@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1165
  Rule: Read-only properties cannot be overridden by the user when creating a RACING EVENT

    @TEST_MCA-1166 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a RACING EVENT
      When the user creates a "RACING EVENT" "GP Monaco" with the following data
        | key        | value      | datatype |
        | name       | GP Monaco  | string   |
        | round      | 7          | number   |
        | date_from  | 2025-05-20 | string   |
        | date_to    | 2025-05-22 | string   |
        | id         | 1234       | number   |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
      Then the response should contain the following keys
        | key        |
        | id         |
        | created_at |
        | updated_at |
      But the response should NOT contain the following properties
        | key        | value      | datatype |
        | id         | 1234       | number   |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
