@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3268
  Rule: Requests to create a PROGRAMME are rejected when the provided data is invalid

    @TEST_MCA-3269
    Scenario: Trying to create a PROGRAMME with missing mandatory information
      When the user tries to create a "PROGRAMME" "Top Gear" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
