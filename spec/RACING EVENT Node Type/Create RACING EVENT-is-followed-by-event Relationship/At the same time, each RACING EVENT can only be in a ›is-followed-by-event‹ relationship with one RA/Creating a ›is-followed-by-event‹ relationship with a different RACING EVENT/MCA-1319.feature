@REQ_MCA-1309
Feature: Create RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1318
  Rule: At the same time, each RACING EVENT can only be in a ›is-followed-by-event‹ relationship with one RACING EVENT

    @TEST_MCA-1319 @implemented
    Scenario: Creating a ›is-followed-by-event‹ relationship with a different RACING EVENT
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "GP Austria (Alternative)"
      When the user creates a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      Then there should exist a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      When the user creates a "is followed by event" relationship between "GP Monaco" and "GP Austria (Alternative)"
      Then there should exist a "is followed by event" relationship between "GP Monaco" and "GP Austria (Alternative)"
      But there should exist NO "is followed by event" relationship between "GP Monaco" and "GP Austria"
