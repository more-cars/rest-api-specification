@REQ_MCA-1756
Feature: Hard Delete SESSION RESULT Node
  As an API contributor
  I want to be able to delete a SESSION RESULT
  So I can clean up bad data, test data or redundant data

  @RULE_MCA-1759
  Rule: Requests are rejected when there exists no SESSION RESULT with the provided ID

    @TEST_MCA-1760 @implemented
    Scenario: Trying to hard-delete a non-existing SESSION RESULT
      Given "SESSION RESULT" "999th place" does NOT exist
      When the user hard-deletes the "SESSION RESULT" "999th place"
      Then the request should be rejected with status code 404
