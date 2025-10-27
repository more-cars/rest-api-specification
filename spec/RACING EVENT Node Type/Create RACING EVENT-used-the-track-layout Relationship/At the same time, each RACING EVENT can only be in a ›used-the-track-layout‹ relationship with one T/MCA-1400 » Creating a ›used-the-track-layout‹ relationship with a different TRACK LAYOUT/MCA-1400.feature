@REQ_MCA-1390
Feature: Create RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1399
  Rule: At the same time, each RACING EVENT can only be in a ›used-the-track-layout‹ relationship with one TRACK LAYOUT

    @TEST_MCA-1400 @implemented
    Scenario: Creating a ›used-the-track-layout‹ relationship with a different TRACK LAYOUT
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exists a "TRACK LAYOUT" "Grand Prix Circuit (Alternative)"
      When the user creates a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      Then there should exist a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      When the user creates a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit (Alternative)"
      Then there should exist a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit (Alternative)"
      But there should exist NO "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
