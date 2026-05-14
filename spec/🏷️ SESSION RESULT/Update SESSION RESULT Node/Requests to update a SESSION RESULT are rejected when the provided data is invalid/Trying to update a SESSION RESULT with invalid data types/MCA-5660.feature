@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5659
  Rule: Requests to update a SESSION RESULT are rejected when the provided data is invalid

    @TEST_MCA-5660 @implemented
    Scenario: Trying to update a SESSION RESULT with invalid data types
      Given there exists a "SESSION RESULT" "1st place"
      When the user updates the node "1st place" with the following data
        | key         | value |
        | position    | TEST  |
        | race_number | 1234  |
        | driver_name | 1234  |
        | team_name   | 1234  |
        | race_time   | 1234  |
        | laps        | TEST  |
        | status      | 1234  |
        | points      | TEST  |
      Then the request should be rejected with status code 400
