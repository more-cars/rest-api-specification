@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1575
  Rule: Read-only properties cannot be overridden by the user when creating a RACING SESSION

    @TEST_MCA-1576 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | PT120M     |
        | distance      | 61         |
        | distance_unit | laps       |
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
