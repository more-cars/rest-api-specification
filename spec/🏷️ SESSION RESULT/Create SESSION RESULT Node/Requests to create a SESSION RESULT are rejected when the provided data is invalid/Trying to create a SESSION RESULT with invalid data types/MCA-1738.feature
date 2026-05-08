@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1736
  Rule: Requests to create a SESSION RESULT are rejected when the provided data is invalid

    @TEST_MCA-1738 @implemented
    Scenario: Trying to create a SESSION RESULT with invalid data types
      When the user tries to create a "SESSION RESULT" with the following data
        | key         | value |
        | position    | true  |
        | race_number | true  |
        | driver_name | true  |
        | team_name   | true  |
        | race_time   | true  |
        | laps        | true  |
        | status      | true  |
        | points      | true  |
      Then the request should be rejected with status code 400
