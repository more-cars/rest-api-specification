@REQ_MCA-1587
Feature: Hard Delete RACING SESSION Node
  As an API contributor
  I want to be able to delete a RACING SESSION
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1590
  Rule: Requests are rejected when there exists no RACING SESSION with the provided ID

    @TEST_MCA-1591 @implemented
    Scenario: Trying to hard-delete a non-existing RACING SESSION
      Given "RACING SESSION" "Free Practice 4" does NOT exist
      When the user hard-deletes the "RACING SESSION" "Free Practice 4"
      Then the request should be rejected with status code 404
