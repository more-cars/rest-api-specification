@REQ_MCA-1874
Feature: Create LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1883
  Rule: At the same time, each LAP TIME can only be in a ›belongs-to-session-result‹ relationship with one SESSION RESULT

    @TEST_MCA-1884 @implemented
    Scenario: Creating a ›belongs-to-session-result‹ relationship with a different SESSION RESULT
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "SESSION RESULT" "Grand Prix (Alternative)"
      When the user creates a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      Then there should exist a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      When the user creates a "belongs to session result" relationship between "fastest lap" and "Grand Prix (Alternative)"
      Then there should exist a "belongs to session result" relationship between "fastest lap" and "Grand Prix (Alternative)"
      But there should exist NO "belongs to session result" relationship between "fastest lap" and "Grand Prix"
