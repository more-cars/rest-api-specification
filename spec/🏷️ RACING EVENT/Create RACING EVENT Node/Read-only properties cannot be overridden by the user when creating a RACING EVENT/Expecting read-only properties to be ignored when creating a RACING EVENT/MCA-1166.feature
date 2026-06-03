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
        | key        | value      |
        | name       | GP Monaco  |
        | round      | 7          |
        | date_from  | 2025-05-20 |
        | date_to    | 2025-05-22 |
        | id         | 1234       |
        | created_at | 2025-01-01 |
        | updated_at | 2025-01-01 |
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
