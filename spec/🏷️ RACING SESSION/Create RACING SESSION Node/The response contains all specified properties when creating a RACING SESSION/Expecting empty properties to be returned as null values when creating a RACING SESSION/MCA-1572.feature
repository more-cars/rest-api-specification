@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1570
  Rule: The response contains all specified properties when creating a RACING SESSION

    @TEST_MCA-1572 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key  | value      |
        | name | Grand Prix |
      Then the response should contain the following properties
        | key           | value      |
        | name          | Grand Prix |
        | start_date    |            |
        | start_time    |            |
        | duration      |            |
        | duration_unit |            |
        | distance      |            |
        | distance_unit |            |
