@REQ_MCA-5634
Feature: Update RACING SESSION Node
  As an API contributor
  I want to be able to update a RACING SESSION
  So I can add missing information or fix incorrect data

  @RULE_MCA-5637
  Rule: Requests are rejected when there exists no RACING SESSION with the provided ID

    @TEST_MCA-5638 @implemented
    Scenario: Trying to update a non-existing RACING SESSION
      Given "RACING SESSION" "Qualifying" does NOT exist
      When the user updates the node "Qualifying"
      Then the request should be rejected with status code 404
