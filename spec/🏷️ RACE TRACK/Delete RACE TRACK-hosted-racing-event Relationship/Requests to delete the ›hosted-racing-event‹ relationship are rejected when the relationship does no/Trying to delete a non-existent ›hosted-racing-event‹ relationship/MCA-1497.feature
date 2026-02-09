@REQ_MCA-1489
Feature: Delete RACE TRACK-hosted-racing-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACE TRACKS
  So I can clean up bad data or test data

  @RULE_MCA-1496
  Rule: Requests to delete the ›hosted-racing-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1497 @implemented
    Scenario: Trying to delete a non-existent ›hosted-racing-event‹ relationship
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACING EVENT" "Goodwood Festival of Speed"
      And there exists NO "hosted racing event" relationship between "Red Bull Ring" and "Goodwood Festival of Speed"
      When the user deletes the "hosted racing event" relationship between "Red Bull Ring" and "Goodwood Festival of Speed"
      Then the request should be rejected with status code 404
