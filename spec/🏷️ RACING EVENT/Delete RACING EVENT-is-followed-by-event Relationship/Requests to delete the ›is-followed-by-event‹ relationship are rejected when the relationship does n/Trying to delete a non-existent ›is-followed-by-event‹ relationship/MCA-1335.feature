@REQ_MCA-1327
Feature: Delete RACING EVENT-is-followed-by-event Relationship
  As an API contributor
  I want to be able to disconnect RACING EVENTS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1334
  Rule: Requests to delete the ›is-followed-by-event‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-1335 @implemented
    Scenario: Trying to delete a non-existent ›is-followed-by-event‹ relationship
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "DTM Norisring"
      And there exists NO "is followed by event" relationship between "GP Monaco" and "DTM Norisring"
      When the user deletes the "is followed by event" relationship between "GP Monaco" and "DTM Norisring"
      Then the request should be rejected with status code 404
