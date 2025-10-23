@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1163
  Rule: Unknown properties are ignored when creating a RACING EVENT

    @TEST_MCA-1164 @implemented
    Scenario: Expecting unknown properties to be ignored when creating a RACING EVENT
      When the user creates a "RACING EVENT" "GP Monaco" with the following data
        | key         | value      | datatype |
        | name        | GP Monaco  | string   |
        | round       | 7          | number   |
        | date_from   | 2025-05-20 | string   |
        | date_to     | 2025-05-22 | string   |
        | thimbleweed | park       | string   |
      Then the response should contain the following properties
        | key       | value      | datatype |
        | name      | GP Monaco  | string   |
        | round     | 7          | number   |
        | date_from | 2025-05-20 | string   |
        | date_to   | 2025-05-22 | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
