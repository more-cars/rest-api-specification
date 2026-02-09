@REQ_MCA-1639
Feature: Delete RACING SESSION-has-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1642
  Rule: Requests to delete the ›has-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1645 @implemented
    Scenario: Trying to delete a ›has-session-result‹ relationship where both IDs are invalid
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And "SESSION RESULT" "9999th place" does NOT exist
      When the user deletes the "has session result" relationship between "Grand Prix" and "9999th place"
      Then the request should be rejected with status code 404
