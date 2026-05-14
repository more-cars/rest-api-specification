@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5661
  Rule: The response contains all properties that are officially specified when updating a SESSION RESULT

    @TEST_MCA-5663 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a SESSION RESULT
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value            |
        | position    | 3                |
        | race_number |                  |
        | driver_name | Lewis Hamilton_2 |
        | team_name   |                  |
        | race_time   |                  |
        | laps        |                  |
        | status      |                  |
        | points      |                  |
      Then the response should contain the following properties
        | key         | value            |
        | position    | 3                |
        | race_number |                  |
        | driver_name | Lewis Hamilton_2 |
        | team_name   |                  |
        | race_time   |                  |
        | laps        |                  |
        | status      |                  |
        | points      |                  |
