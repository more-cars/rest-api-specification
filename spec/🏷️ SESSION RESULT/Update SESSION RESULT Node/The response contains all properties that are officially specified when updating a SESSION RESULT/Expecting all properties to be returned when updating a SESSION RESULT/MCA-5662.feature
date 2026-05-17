@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5661
  Rule: The response contains all properties that are officially specified when updating a SESSION RESULT

    @TEST_MCA-5662 @implemented
    Scenario: Expecting all properties to be returned when updating a SESSION RESULT
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value            |
        | position    | 3                |
        | race_number | 44_2             |
        | driver_name | Lewis Hamilton_2 |
        | team_name   | Mercedes_2       |
        | race_time   | PT1H23M45.678S_2 |
        | laps        | 53               |
        | status      | finished_2       |
        | points      | 27               |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key         | value            |
        | position    | 3                |
        | race_number | 44_2             |
        | driver_name | Lewis Hamilton_2 |
        | team_name   | Mercedes_2       |
        | race_time   | PT1H23M45.678S_2 |
        | laps        | 53               |
        | status      | finished_2       |
        | points      | 27               |
