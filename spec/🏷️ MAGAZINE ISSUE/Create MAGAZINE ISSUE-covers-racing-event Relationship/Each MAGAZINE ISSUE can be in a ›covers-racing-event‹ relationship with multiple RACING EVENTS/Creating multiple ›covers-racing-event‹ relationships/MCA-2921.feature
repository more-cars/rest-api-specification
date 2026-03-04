@REQ_MCA-2911
Feature: Create MAGAZINE ISSUE-covers-racing-event Relationship

  @RULE_MCA-2920
  Rule: Each MAGAZINE ISSUE can be in a ›covers-racing-event‹ relationship with multiple RACING EVENTS

    @TEST_MCA-2921
    Scenario: Creating multiple ›covers-racing-event‹ relationships
      Given there exists a "MAGAZINE ISSUE" "F1 Saison Start"
      And there exists a "RACING EVENT" "F1 GP Australia 2026"
      And there exists a "RACING EVENT" "F1 GP Australia 2026 (Alternative)"
      When the user creates a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      And the user creates a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026 (Alternative)"
      Then there should exist a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026"
      And there should exist a "covers racing event" relationship between "F1 Saison Start" and "F1 GP Australia 2026 (Alternative)"
