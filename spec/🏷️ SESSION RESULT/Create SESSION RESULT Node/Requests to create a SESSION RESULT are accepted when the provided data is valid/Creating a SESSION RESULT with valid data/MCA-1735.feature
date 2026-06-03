@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1734
  Rule: Requests to create a SESSION RESULT are accepted when the provided data is valid

    @TEST_MCA-1735 @implemented
    Scenario: Creating a SESSION RESULT with valid data
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
      Then the request should be confirmed with status code 201
      And the response should return the "SESSION RESULT" "1st place"
