@REQ_MCA-5688
Feature: Update RACING GAME Node
  As an API contributor
  I want to be able to update a RACING GAME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5691
  Rule: Requests are rejected when there exists no RACING GAME with the provided ID

    @TEST_MCA-5692 @implemented
    Scenario: Trying to update a non-existing RACING GAME
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      When the user updates the node "Assetto Corsa"
      Then the request should be rejected with status code 404
