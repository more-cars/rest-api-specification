@REQ_MCA-1363
Feature: Create RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1366
  Rule: Requests to create a ›took-place-at-race-track‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1367 @implemented
    Scenario: Trying to create a ›took-place-at-race-track‹ relationship with invalid RACING EVENT ID
      Given "RACING EVENT" "GP Austria" does NOT exist
      And there exists a "RACE TRACK" "Red Bull Ring"
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      Then the request should be rejected with status code 404
