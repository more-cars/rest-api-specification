@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1157
  Rule: Requests to create a RACING EVENT are rejected when the provided data is invalid

    @TEST_MCA-1159 @implemented
    Scenario: Trying to create a RACING EVENT with invalid data types
      When the user tries to create a "RACING EVENT" with the following data
        | key       | value |
        | name      | true  |
        | round     | true  |
        | date_from | true  |
        | date_to   | true  |
      Then the request should be rejected with status code 400
