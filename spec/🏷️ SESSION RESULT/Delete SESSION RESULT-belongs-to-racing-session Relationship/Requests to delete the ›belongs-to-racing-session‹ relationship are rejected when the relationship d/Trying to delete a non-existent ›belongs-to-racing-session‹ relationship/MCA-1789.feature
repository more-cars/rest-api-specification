@REQ_MCA-1781
Feature: Delete SESSION RESULT-belongs-to-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-1788
  Rule: Requests to delete the ›belongs-to-racing-session‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1789 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-racing-session‹ relationship
      Given there exists a "SESSION RESULT" "999th place"
      And there exists a "RACING SESSION" "Grand Prix"
      And there exists NO "belongs to racing session" relationship between "999th place" and "Grand Prix"
      When the user deletes the "belongs to racing session" relationship between "999th place" and "Grand Prix"
      Then the request should be rejected with status code 404
