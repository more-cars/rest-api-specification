@REQ_MCA-1702
Feature: Create RACING EVENT-has-racing-session Relationship

  @RULE_MCA-1711
  Rule: Each RACING EVENT can be in a ›has-racing-session‹ relationship with multiple RACING SESSIONS

    @TEST_MCA-1712 @implemented
    Scenario: Creating multiple ›has-racing-session‹ relationships
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING SESSION" "Qualifying"
      And there exists a "RACING SESSION" "Qualifying (Alternative)"
      When the user creates a "has racing session" relationship between "GP Monaco" and "Qualifying"
      And the user creates a "has racing session" relationship between "GP Monaco" and "Qualifying (Alternative)"
      Then there should exist a "has racing session" relationship between "GP Monaco" and "Qualifying"
      And there should exist a "has racing session" relationship between "GP Monaco" and "Qualifying (Alternative)"
