@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1567
  Rule: Requests to create a RACING SESSION are rejected when the provided data is invalid

    @TEST_MCA-1569 @implemented
    Scenario: Trying to create a RACING SESSION with invalid data types
      When the user tries to create a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      | datatype |
        | name          | Grand Prix | boolean  |
        | start_date    | 2025-05-25 | boolean  |
        | start_time    | 15:00      | boolean  |
        | duration      | 120        | boolean  |
        | duration_unit | min        | boolean  |
        | distance      | 61         | boolean  |
        | distance_unit | laps       | boolean  |
      Then the request should be rejected with status code 400
