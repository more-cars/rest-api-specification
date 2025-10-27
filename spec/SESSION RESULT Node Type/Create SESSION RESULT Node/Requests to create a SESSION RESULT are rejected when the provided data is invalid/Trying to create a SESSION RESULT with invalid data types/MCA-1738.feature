@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1736
  Rule: Requests to create a SESSION RESULT are rejected when the provided data is invalid

    @TEST_MCA-1738
    Scenario: Trying to create a SESSION RESULT with invalid data types
      When the user tries to create a "SESSION RESULT" "1st place" with the following data
        | key         | value          | datatype |
        | position    | 1              | boolean  |
        | race_number | 44             | boolean  |
        | driver_name | Lewis Hamilton | boolean  |
        | team_name   | Mercedes       | boolean  |
        | race_time   | PT1H23M45.678S | boolean  |
        | laps        | 51             | boolean  |
        | status      | finished       | boolean  |
        | points      | 25             | boolean  |
      Then the request should be rejected with status code 400
