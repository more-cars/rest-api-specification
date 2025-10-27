@REQ_MCA-1381
Feature: Delete RACING EVENT-took-place-at-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1388
  Rule: Requests to delete the ›took-place-at-race-track‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1389 @implemented
    Scenario: Trying to delete a non-existent ›took-place-at-race-track‹ relationship
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACE TRACK" "Adelaide Circuit"
      And there exists NO "took place at race track" relationship between "GP Austria" and "Adelaide Circuit"
      When the user deletes the "took place at race track" relationship between "GP Austria" and "Adelaide Circuit"
      Then the request should be rejected with status code 404
