@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5653
  Rule: Requests to update a SESSION RESULT are accepted when the provided data is valid

    @TEST_MCA-5654 @implemented
    Scenario: Updating a SESSION RESULT with valid data
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value            |
        | position    | 3                |
        | race_number | H44_2            |
        | driver_name | Lewis Hamilton_2 |
        | team_name   | Mercedes_2       |
        | race_time   | PT1H23M45.678S   |
        | laps        | 53               |
        | status      | finished         |
        | points      | 27               |
      Then the request should be confirmed with status code 200
