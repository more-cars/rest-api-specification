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
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | 120        |
        | duration_unit | min        |
        | distance      | 61         |
        | distance_unit | laps       |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING SESSION" "Grand Prix"
