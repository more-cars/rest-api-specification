@REQ_MCA-1594
Feature: Create RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1603
  Rule: At the same time, each RACING SESSION can only be in a ›belongs-to-racing-event‹ relationship with one RACING EVENT

    @TEST_MCA-1604
    Scenario: Creating a ›belongs-to-racing-event‹ relationship with a different RACING EVENT
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Monaco (Alternative)"
      When the user creates a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      Then there should exist a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      When the user creates a "belongs to racing event" relationship between "Qualifying" and "GP Monaco (Alternative)"
      Then there should exist a "belongs to racing event" relationship between "Qualifying" and "GP Monaco (Alternative)"
      But there should exist NO "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
