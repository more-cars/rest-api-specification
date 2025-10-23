@REQ_MCA-1363
Feature: Create RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1370
  Rule: The same ›took-place-at-race-track‹ relationship between the same nodes can only be created once

    @TEST_MCA-1371 @implemented
    Scenario: Trying to create the same ›took-place-at-race-track‹ relationship again
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      Then the response should return with status code 304
