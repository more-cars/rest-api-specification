@REQ_MCA-1498
Feature: Create TRACK LAYOUT-was-used-by-racing-event Relationship

  @RULE_MCA-1507
  Rule: Each TRACK LAYOUT can be in a ›was-used-by-racing-event‹ relationship with multiple RACING EVENTS

    @TEST_MCA-1508 @implemented
    Scenario: Creating multiple ›was-used-by-racing-event‹ relationships
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "RACING EVENT" "GP Silverstone (Alternative)"
      When the user creates a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      And the user creates a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone (Alternative)"
      Then there should exist a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      And there should exist a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone (Alternative)"
