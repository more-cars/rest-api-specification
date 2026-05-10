@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1573
  Rule: Unknown properties are ignored when creating a RACING SESSION

    @TEST_MCA-1574 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | 120        |
        | duration_unit | min        |
        | distance      | 61         |
        | distance_unit | laps       |
        | thimbleweed   | park       |
      Then the response should contain the following properties
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | 120        |
        | duration_unit | min        |
        | distance      | 61         |
        | distance_unit | laps       |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
