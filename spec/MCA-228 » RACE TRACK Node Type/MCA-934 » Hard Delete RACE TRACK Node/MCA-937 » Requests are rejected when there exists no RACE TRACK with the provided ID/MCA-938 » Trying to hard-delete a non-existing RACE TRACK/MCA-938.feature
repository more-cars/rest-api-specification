@REQ_MCA-934
Feature: Hard Delete RACE TRACK Node
  As an API contributor
  I want to be able to delete a RACE TRACK
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-937
  Rule: Requests are rejected when there exists no RACE TRACK with the provided ID

    @TEST_MCA-938 @implemented
    Scenario: Trying to hard-delete a non-existing RACE TRACK
      Given "RACE TRACK" "AVUS" does NOT exist
      When the user hard-deletes the "RACE TRACK" "AVUS"
      Then the request should be rejected with status code 404
