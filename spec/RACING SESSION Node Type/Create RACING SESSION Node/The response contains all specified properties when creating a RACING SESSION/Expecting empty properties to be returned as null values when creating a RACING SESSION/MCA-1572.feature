@REQ_MCA-1564
Feature: Create RACING SESSION Node
  As an API contributor
  I want to be able to create RACING SESSIONS
  So I can fill gaps in the database

  @RULE_MCA-1570
  Rule: The response contains all specified properties when creating a RACING SESSION

    @TEST_MCA-1572
    Scenario: Expecting empty properties to be returned as null values when creating a RACING SESSION
      When the user creates a "RACING SESSION" "Grand Prix" with the following data
        | key  | value      | datatype |
        | name | Grand Prix | string   |
      Then the response should contain the following properties
        | key           | value      | datatype |
        | name          | Grand Prix | string   |
        | start_date    |            | string   |
        | start_time    |            | string   |
        | duration      |            | number   |
        | duration_unit |            | string   |
        | distance      |            | number   |
        | distance_unit |            | string   |
