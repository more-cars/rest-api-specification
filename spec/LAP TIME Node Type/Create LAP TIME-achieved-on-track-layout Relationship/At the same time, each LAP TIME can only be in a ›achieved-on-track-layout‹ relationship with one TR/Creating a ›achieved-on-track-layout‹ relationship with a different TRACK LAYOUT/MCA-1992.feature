@REQ_MCA-1982
Feature: Create LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1991
  Rule: At the same time, each LAP TIME can only be in a ›achieved-on-track-layout‹ relationship with one TRACK LAYOUT

    @TEST_MCA-1992 @implemented
    Scenario: Creating a ›achieved-on-track-layout‹ relationship with a different TRACK LAYOUT
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "TRACK LAYOUT" "Club Circuit (Alternative)"
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      Then there should exist a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit (Alternative)"
      Then there should exist a "achieved on track layout" relationship between "fastest lap" and "Club Circuit (Alternative)"
      But there should exist NO "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
