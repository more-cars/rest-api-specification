@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1742
  Rule: Unknown properties are ignored when creating a SESSION RESULT

    @TEST_MCA-1743 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a SESSION RESULT
      When the user creates a "SESSION RESULT" "1st place" with the following data
        | key         | value          |
        | position    | 1              |
        | race_number | N44            |
        | driver_name | Lewis Hamilton |
        | team_name   | Mercedes       |
        | race_time   | PT1H23M45.678S |
        | laps        | 51             |
        | status      | finished       |
        | points      | 25             |
        | thimbleweed | park           |
      Then the response should contain the following properties
        | key         | value          |
        | position    | 1              |
        | race_number | N44            |
        | driver_name | Lewis Hamilton |
        | team_name   | Mercedes       |
        | race_time   | PT1H23M45.678S |
        | laps        | 51             |
        | status      | finished       |
        | points      | 25             |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
