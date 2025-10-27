@REQ_MCA-1919
Feature: Delete SESSION RESULT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1922
  Rule: Requests to delete the ›has-lap-time‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1923
    Scenario: Trying to delete a ›has-lap-time‹ relationship with invalid SESSION RESULT ID
      Given "SESSION RESULT" "Grand Prix" does NOT exist
      And there exists a "LAP TIME" "test lap"
      When the user deletes the "has lap time" relationship between "Grand Prix" and "test lap"
      Then the request should be rejected with status code 404
