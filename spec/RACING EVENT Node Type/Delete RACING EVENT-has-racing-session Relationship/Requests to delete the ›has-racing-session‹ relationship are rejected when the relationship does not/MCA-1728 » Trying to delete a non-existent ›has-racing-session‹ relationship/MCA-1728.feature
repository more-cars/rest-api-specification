@REQ_MCA-1720
Feature: Delete RACING EVENT-has-racing-session Relationship
  As an API contributor
  I want to be able to disconnect RACING SESSIONS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1727
  Rule: Requests to delete the ›has-racing-session‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1728
    Scenario: Trying to delete a non-existent ›has-racing-session‹ relationship
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING SESSION" "DTM Training"
      And there exists NO "has racing session" relationship between "GP Monaco" and "DTM Training"
      When the user deletes the "has racing session" relationship between "GP Monaco" and "DTM Training"
      Then the request should be rejected with status code 404
