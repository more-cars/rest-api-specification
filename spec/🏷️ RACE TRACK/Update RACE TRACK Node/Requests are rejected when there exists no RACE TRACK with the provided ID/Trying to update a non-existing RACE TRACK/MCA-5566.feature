@REQ_MCA-5562
Feature: Update RACE TRACK Node
  As an API contributor
  I want to be able to update a RACE TRACK
  So I can add missing information or fix incorrect data

  @RULE_MCA-5565
  Rule: Requests are rejected when there exists no RACE TRACK with the provided ID

    @TEST_MCA-5566 @implemented
    Scenario: Trying to update a non-existing RACE TRACK
      Given "RACE TRACK" "Norisring" does NOT exist
      When the user updates the node "Norisring"
      Then the request should be rejected with status code 404
