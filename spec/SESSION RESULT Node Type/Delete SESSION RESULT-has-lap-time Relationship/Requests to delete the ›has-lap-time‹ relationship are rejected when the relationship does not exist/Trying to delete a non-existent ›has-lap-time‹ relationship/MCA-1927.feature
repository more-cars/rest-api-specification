@REQ_MCA-1919
Feature: Delete SESSION RESULT-has-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1926
  Rule: Requests to delete the ›has-lap-time‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1927 @implemented
    Scenario: Trying to delete a non-existent ›has-lap-time‹ relationship
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "LAP TIME" "test lap"
      And there exists NO "has lap time" relationship between "Grand Prix" and "test lap"
      When the user deletes the "has lap time" relationship between "Grand Prix" and "test lap"
      Then the request should be rejected with status code 404
