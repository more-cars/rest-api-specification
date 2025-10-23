@REQ_MCA-1336
Feature: Create RACING EVENT-follows-event Relationship

  @RULE_MCA-1345
  Rule: At the same time, each RACING EVENT can only be in a ›follows-event‹ relationship with one RACING EVENT

    @TEST_MCA-1346 @implemented
    Scenario: Creating a ›follows-event‹ relationship with a different RACING EVENT
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Monaco (Alternative)"
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco"
      Then there should exist a "follows event" relationship between "GP Austria" and "GP Monaco"
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco (Alternative)"
      Then there should exist a "follows event" relationship between "GP Austria" and "GP Monaco (Alternative)"
      But there should exist NO "follows event" relationship between "GP Austria" and "GP Monaco"
