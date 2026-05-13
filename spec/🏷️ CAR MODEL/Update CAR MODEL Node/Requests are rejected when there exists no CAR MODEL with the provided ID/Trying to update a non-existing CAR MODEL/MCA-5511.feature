@REQ_MCA-5507
Feature: Update CAR MODEL Node
  As an API contributor
  I want to be able to update a CAR MODEL
  So I can add missing information or fix incorrect data

  @RULE_MCA-5510
  Rule: Requests are rejected when there exists no CAR MODEL with the provided ID

    @TEST_MCA-5511 @implemented
    Scenario: Trying to update a non-existing CAR MODEL
      Given "CAR MODEL" "Corolla" does NOT exist
      When the user updates the node "Corolla"
      Then the request should be rejected with status code 404
