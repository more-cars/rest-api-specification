@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1160
  Rule: The response contains all specified properties when creating a RACING EVENT

    @TEST_MCA-1161 @implemented
    Scenario: Expecting all properties to be returned when creating a RACING EVENT
      When the user creates a "RACING EVENT" "GP Monaco" with the following data
        | key       | value      | datatype |
        | name      | GP Monaco  | string   |
        | round     | 7          | number   |
        | date_from | 2025-05-20 | string   |
        | date_to   | 2025-05-22 | string   |
      Then the response should contain the following properties
        | key       | value      | datatype |
        | name      | GP Monaco  | string   |
        | round     | 7          | number   |
        | date_from | 2025-05-20 | string   |
        | date_to   | 2025-05-22 | string   |
