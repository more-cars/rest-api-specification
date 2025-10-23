@REQ_MCA-1354
Feature: Delete RACING EVENT-follows-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1361
  Rule: Requests to delete the ›follows-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1362 @implemented
    Scenario: Trying to delete a non-existent ›follows-event‹ relationship
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists NO "follows event" relationship between "GP Austria" and "DTM Norisring"
      When the user deletes the "follows event" relationship between "GP Austria" and "DTM Norisring"
      Then the request should be rejected with status code 404
