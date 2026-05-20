@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1744
  Rule: Read-only properties cannot be overridden by the user when creating a SESSION RESULT

    @TEST_MCA-1745 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a SESSION RESULT
      When the user creates a "SESSION RESULT" "1st place" with the following data
        | key         | value          |
        | position    | 1              |
        | race_number | N44            |
        | driver_name | Lewis Hamilton |
        | team_name   | Mercedes       |
        | race_time   | PT1H23M45.678S |
        | laps        | 51             |
        | status      | Finished       |
        | points      | 25             |
        | id          | 1234           |
        | created_at  | 2025-01-01     |
        | updated_at  | 2025-01-01     |
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
