@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1570
  Rule: The response contains all specified properties when creating a RACING SESSION

    @TEST_MCA-1571 @implemented
    Scenario: Expecting all properties to be returned when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | PT120M     |
        | distance      | 61         |
        | distance_unit | laps       |
      Then the response should contain the following properties
        | key           | value      |
        | name          | Grand Prix |
        | start_date    | 2025-05-25 |
        | start_time    | 15:00      |
        | duration      | PT120M     |
        | distance      | 61         |
        | distance_unit | laps       |
