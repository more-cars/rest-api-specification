@REQ_MCA-1781
Feature: Delete SESSION RESULT-belongs-to-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1784
  Rule: Requests to delete the ›belongs-to-racing-session‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1786
    Scenario: Trying to delete a ›belongs-to-racing-session‹ relationship with invalid RACING SESSION ID
      Given there exists a "SESSION RESULT" "999th place"
      And "RACING SESSION" "Grand Prix" does NOT exist
      When the user deletes the "belongs to racing session" relationship between "999th place" and "Grand Prix"
      Then the request should be rejected with status code 404
