@REQ_MCA-1363
Feature: Create RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1366
  Rule: Requests to create a ›took-place-at-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1368 @implemented
    Scenario: Trying to create a ›took-place-at-race-track‹ relationship with invalid RACE TRACK ID
      Given there exists a "RACING EVENT" "GP Austria"
      And "RACE TRACK" "Red Bull Ring" does NOT exist
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      Then the request should be rejected with status code 404
