@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1739
  Rule: The response contains all specified properties when creating a SESSION RESULT

    @TEST_MCA-1741 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a SESSION RESULT
      When the user creates a "SESSION RESULT" "1st place" with the following data
        | key         | value          |
        | position    | 1              |
        | driver_name | Lewis Hamilton |
      Then the response should contain the following properties
        | key         | value          |
        | position    | 1              |
        | race_number |                |
        | driver_name | Lewis Hamilton |
        | team_name   |                |
        | race_time   |                |
        | laps        |                |
        | status      |                |
        | points      |                |
