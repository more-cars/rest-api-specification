@REQ_MCA-1639
Feature: Delete RACING SESSION-has-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1646
  Rule: Requests to delete the ›has-session-result‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1647 @implemented
    Scenario: Trying to delete a non-existent ›has-session-result‹ relationship
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "SESSION RESULT" "9999th place"
      And there exists NO "has session result" relationship between "Grand Prix" and "9999th place"
      When the user deletes the "has session result" relationship between "Grand Prix" and "9999th place"
      Then the request should be rejected with status code 404
