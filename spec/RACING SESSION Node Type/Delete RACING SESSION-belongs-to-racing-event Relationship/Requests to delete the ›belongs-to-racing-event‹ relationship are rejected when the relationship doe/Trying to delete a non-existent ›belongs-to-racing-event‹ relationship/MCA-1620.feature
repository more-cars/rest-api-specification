@REQ_MCA-1612
Feature: Delete RACING SESSION-belongs-to-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1619
  Rule: Requests to delete the ›belongs-to-racing-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1620
    Scenario: Trying to delete a non-existent ›belongs-to-racing-event‹ relationship
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists NO "belongs to racing event" relationship between "Grand Prix" and "DTM Norisring"
      When the user deletes the "belongs to racing event" relationship between "Grand Prix" and "DTM Norisring"
      Then the request should be rejected with status code 404
