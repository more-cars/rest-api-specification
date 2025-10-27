@REQ_MCA-1763
Feature: Create SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1772
  Rule: At the same time, each SESSION RESULT can only be in a ›belongs-to-racing-session‹ relationship with one RACING SESSION

    @TEST_MCA-1773
    Scenario: Creating a ›belongs-to-racing-session‹ relationship with a different RACING SESSION
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "RACING SESSION" "Grand Prix"
      And there exists a "RACING SESSION" "Grand Prix (Alternative)"
      When the user creates a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      Then there should exist a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      When the user creates a "belongs to racing session" relationship between "1st place" and "Grand Prix (Alternative)"
      Then there should exist a "belongs to racing session" relationship between "1st place" and "Grand Prix (Alternative)"
      But there should exist NO "belongs to racing session" relationship between "1st place" and "Grand Prix"
