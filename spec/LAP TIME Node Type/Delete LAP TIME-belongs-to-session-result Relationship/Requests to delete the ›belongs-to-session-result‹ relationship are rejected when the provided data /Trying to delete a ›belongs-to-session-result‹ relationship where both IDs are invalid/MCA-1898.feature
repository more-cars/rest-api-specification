@REQ_MCA-1892
Feature: Delete LAP TIME-belongs-to-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1895
  Rule: Requests to delete the ›belongs-to-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1898 @implemented
    Scenario: Trying to delete a ›belongs-to-session-result‹ relationship where both IDs are invalid
      Given "LAP TIME" "test lap" does NOT exist
      And "SESSION RESULT" "Grand Prix" does NOT exist
      When the user deletes the "belongs to session result" relationship between "test lap" and "Grand Prix"
      Then the request should be rejected with status code 404
