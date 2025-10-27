@REQ_MCA-1471
Feature: Create RACE TRACK-hosted-racing-event Relationship

  @RULE_MCA-1480
  Rule: Each RACE TRACK can be in a ›hosted-racing-event‹ relationship with multiple RACING EVENTS

    @TEST_MCA-1481 @implemented
    Scenario: Creating multiple ›hosted-racing-event‹ relationships
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "GP Austria (Alternative)"
      When the user creates a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      And the user creates a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria (Alternative)"
      Then there should exist a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      And there should exist a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria (Alternative)"
