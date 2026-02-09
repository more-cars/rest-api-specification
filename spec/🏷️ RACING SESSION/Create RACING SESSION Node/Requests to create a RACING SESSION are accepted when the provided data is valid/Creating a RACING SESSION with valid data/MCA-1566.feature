@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1565
  Rule: Requests to create a RACING SESSION are accepted when the provided data is valid

    @TEST_MCA-1566 @implemented
    Scenario: Creating a RACING SESSION with valid data
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      | datatype |
        | name          | Grand Prix | string   |
        | start_date    | 2025-05-25 | string   |
        | start_time    | 15:00      | string   |
        | duration      | 120        | number   |
        | duration_unit | min        | string   |
        | distance      | 61         | number   |
        | distance_unit | laps       | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING SESSION" "Grand Prix"
