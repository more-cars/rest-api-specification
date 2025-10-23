@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1157
  Rule: Requests to create a RACING EVENT are rejected when the provided data is invalid

    @TEST_MCA-1159 @implemented
    Scenario: Trying to create a RACING EVENT with invalid data types
      When the user tries to create a "RACING EVENT" "GP Monaco" with the following data
        | key       | value      | datatype |
        | name      | GP Monaco  | boolean  |
        | round     | 7          | boolean  |
        | date_from | 2025-05-20 | boolean  |
        | date_to   | 2025-05-22 | boolean  |
      Then the request should be rejected with status code 400
