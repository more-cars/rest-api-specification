@REQ_MCA-1381
Feature: Delete RACING EVENT-took-place-at-race-track Relationship
  As an API contributor
  I want to be able to disconnect RACE TRACKS from RACING EVENTS
  So I can clean up bad data or test data

  @RULE_MCA-1382
  Rule: The ›took-place-at-race-track‹ relationship is deleted when the provided data is valid

    @TEST_MCA-1383 @implemented
    Scenario: Deleting the ›took-place-at-race-track‹ relationship when it actually exists
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACE TRACK" "Adelaide Circuit"
      And there exists a "took place at race track" relationship "R" between "GP Austria" and "Adelaide Circuit"
      When the user deletes the "took place at race track" relationship between "GP Austria" and "Adelaide Circuit"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
