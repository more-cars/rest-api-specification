@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3281
  Rule: Requests to create a PROGRAMME EPISODE are rejected when the provided data is invalid

    @TEST_MCA-3282 @implemented
    Scenario: Trying to create a PROGRAMME EPISODE with missing mandatory information
      When the user tries to create a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
