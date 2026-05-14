@REQ_MCA-5652
Feature: Update SESSION RESULT Node
  As an API contributor
  I want to be able to update a SESSION RESULT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5655
  Rule: Requests are rejected when there exists no SESSION RESULT with the provided ID

    @TEST_MCA-5656 @implemented
    Scenario: Trying to update a non-existing SESSION RESULT
      Given "SESSION RESULT" "1st place" does NOT exist
      When the user updates the node "1st place"
      Then the request should be rejected with status code 404
