@REQ_MCA-1154
Feature: Create RACING EVENT Node
  As an API contributor
  I want to be able to create RACING EVENTS
  So I can fill gaps in the database

  @RULE_MCA-1157
  Rule: Requests to create a RACING EVENT are rejected when the provided data is invalid

    @TEST_MCA-1158 @implemented
    Scenario: Trying to create a RACING EVENT with missing mandatory information
      When the user tries to create a "RACING EVENT" "GP Monaco" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
