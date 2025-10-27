@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1744
  Rule: Read-only properties cannot be overridden by the user when creating a SESSION RESULT

    @TEST_MCA-1745
    Scenario: Expecting read-only properties to be ignored when creating a SESSION RESULT
      When the user creates a "SESSION RESULT" "1st place" with the following data
        | key         | value          | datatype |
        | position    | 1              | number   |
        | race_number | 44             | string   |
        | driver_name | Lewis Hamilton | string   |
        | team_name   | Mercedes       | string   |
        | race_time   | PT1H23M45.678S | string   |
        | laps        | 51             | number   |
        | status      | finished       | string   |
        | points      | 25             | number   |
        | id          | 1234           | number   |
        | created_at  | 2025-01-01     | string   |
        | updated_at  | 2025-01-01     | string   |
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
