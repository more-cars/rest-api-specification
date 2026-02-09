@REQ_MCA-1892
Feature: Delete LAP TIME-belongs-to-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-1899
  Rule: Requests to delete the ›belongs-to-session-result‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1900 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-session-result‹ relationship
      Given there exists a "LAP TIME" "test lap"
      And there exists a "SESSION RESULT" "Grand Prix"
      And there exists NO "belongs to session result" relationship between "test lap" and "Grand Prix"
      When the user deletes the "belongs to session result" relationship between "test lap" and "Grand Prix"
      Then the request should be rejected with status code 404
