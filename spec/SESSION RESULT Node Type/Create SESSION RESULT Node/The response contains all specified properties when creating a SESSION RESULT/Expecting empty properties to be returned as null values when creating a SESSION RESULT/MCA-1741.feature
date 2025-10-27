@REQ_MCA-1733
Feature: Create SESSION RESULT Node
  As an API contributor
  I want to be able to create SESSION RESULTS
  So I can fill gaps in the database

  @RULE_MCA-1739
  Rule: The response contains all specified properties when creating a SESSION RESULT

    @TEST_MCA-1741
    Scenario: Expecting empty properties to be returned as null values when creating a SESSION RESULT
      When the user creates a "SESSION RESULT" "1st place" with the following data
        | key         | value          | datatype |
        | position    | 1              | number   |
        | driver_name | Lewis Hamilton | string   |
      Then the response should contain the following properties
        | key         | value          | datatype |
        | position    | 1              | number   |
        | race_number |                | string   |
        | driver_name | Lewis Hamilton | string   |
        | team_name   |                | string   |
        | race_time   |                | string   |
        | laps        |                | number   |
        | status      |                | string   |
        | points      |                | number   |
