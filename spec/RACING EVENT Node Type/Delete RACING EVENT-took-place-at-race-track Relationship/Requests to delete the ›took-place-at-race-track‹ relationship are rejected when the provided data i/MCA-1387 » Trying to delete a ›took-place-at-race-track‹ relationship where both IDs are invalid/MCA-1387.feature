@REQ_MCA-1381
Feature: Delete RACING EVENT-took-place-at-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1384
  Rule: Requests to delete the ›took-place-at-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1387 @implemented
    Scenario: Trying to delete a ›took-place-at-race-track‹ relationship where both IDs are invalid
      Given "RACING EVENT" "GP Austria" does NOT exist
      And "RACE TRACK" "Adelaide Circuit" does NOT exist
      When the user deletes the "took place at race track" relationship between "GP Austria" and "Adelaide Circuit"
      Then the request should be rejected with status code 404
