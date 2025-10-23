@REQ_MCA-1184
Feature: Create RACING SERIES-has-racing-event Relationship

  @RULE_MCA-1193
  Rule: Each RACING SERIES can be in a ›has-racing-event‹ relationship with multiple RACING EVENTS

    @TEST_MCA-1194 @implemented
    Scenario: Creating multiple ›has-racing-event‹ relationships
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Monaco (Alternative)"
      When the user creates a "has racing event" relationship between "Formula 1" and "GP Monaco"
      And the user creates a "has racing event" relationship between "Formula 1" and "GP Monaco (Alternative)"
      Then there should exist a "has racing event" relationship between "Formula 1" and "GP Monaco"
      And there should exist a "has racing event" relationship between "Formula 1" and "GP Monaco (Alternative)"
