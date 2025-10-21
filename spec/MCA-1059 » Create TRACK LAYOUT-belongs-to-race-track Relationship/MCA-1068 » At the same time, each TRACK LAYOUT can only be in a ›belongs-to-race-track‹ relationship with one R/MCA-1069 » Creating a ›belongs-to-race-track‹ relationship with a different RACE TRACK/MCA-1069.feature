@REQ_MCA-1059
Feature: Create TRACK LAYOUT-belongs-to-race-track Relationship

  @RULE_MCA-1068
  Rule: At the same time, each TRACK LAYOUT can only be in a ›belongs-to-race-track‹ relationship with one RACE TRACK

    @TEST_MCA-1069 @implemented
    Scenario: Creating a ›belongs-to-race-track‹ relationship with a different RACE TRACK
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "RACE TRACK" "Silverstone"
      And there exists a "RACE TRACK" "Silverstone (Alternative)"
      When the user creates a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      Then there should exist a "belongs to race track" relationship between "Club Circuit" and "Silverstone"
      When the user creates a "belongs to race track" relationship between "Club Circuit" and "Silverstone (Alternative)"
      Then there should exist a "belongs to race track" relationship between "Club Circuit" and "Silverstone (Alternative)"
      But there should exist NO "belongs to race track" relationship between "Club Circuit" and "Silverstone"
