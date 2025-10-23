@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1155
  Rule: Requests to create a RACING EVENT are accepted when the provided data is valid

    @TEST_MCA-1156 @implemented
    Scenario: Creating a RACING EVENT with valid data
      When the user creates a "RACING EVENT" "GP Monaco" with the following data
        | key       | value      | datatype |
        | name      | GP Monaco  | string   |
        | round     | 7          | number   |
        | date_from | 2025-05-20 | string   |
        | date_to   | 2025-05-22 | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "RACING EVENT" "GP Monaco"
