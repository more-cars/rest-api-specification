@REQ_MCA-3612
Feature: Hard Delete MOTOR SHOW Node
  As an API contributor
  I want to be able to delete a MOTOR SHOW
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-3615
  Rule: Requests are rejected when there exists no MOTOR SHOW with the provided ID

    @TEST_MCA-3616 @implemented
    Scenario: Trying to hard-delete a non-existing MOTOR SHOW
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user hard-deletes the "MOTOR SHOW" "IAA Frankfurt"
      Then the request should be rejected with status code 404
