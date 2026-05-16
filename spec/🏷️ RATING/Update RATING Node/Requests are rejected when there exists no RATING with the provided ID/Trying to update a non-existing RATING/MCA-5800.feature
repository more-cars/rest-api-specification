@REQ_MCA-5796
Feature: Update RATING Node
  As an API contributor
  I want to be able to update a RATING
  So I can add missing information or fix incorrect data

  @RULE_MCA-5799
  Rule: Requests are rejected when there exists no RATING with the provided ID

    @TEST_MCA-5800 @implemented
    Scenario: Trying to update a non-existing RATING
      Given "RATING" "93 Percent" does NOT exist
      When the user updates the node "93 Percent"
      Then the request should be rejected with status code 404
