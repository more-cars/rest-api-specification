@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1575
  Rule: Read-only properties cannot be overridden by the user when creating a RACING SESSION

    @TEST_MCA-1576
    Scenario: Expecting read-only properties to be ignored when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      | datatype |
        | name          | Grand Prix | string   |
        | start_date    | 2025-05-25 | string   |
        | start_time    | 15:00      | string   |
        | duration      | 120        | number   |
        | duration_unit | min        | string   |
        | distance      | 61         | number   |
        | distance_unit | laps       | string   |
        | id            | 1234       | number   |
        | created_at    | 2025-01-01 | string   |
        | updated_at    | 2025-01-01 | string   |
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
