@REQ_MCA-1363
Feature: Create RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1372
  Rule: At the same time, each RACING EVENT can only be in a ›took-place-at-race-track‹ relationship with one RACE TRACK

    @TEST_MCA-1373 @implemented
    Scenario: Creating a ›took-place-at-race-track‹ relationship with a different RACE TRACK
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACE TRACK" "Red Bull Ring (Alternative)"
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      Then there should exist a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring (Alternative)"
      Then there should exist a "took place at race track" relationship between "GP Austria" and "Red Bull Ring (Alternative)"
      But there should exist NO "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
