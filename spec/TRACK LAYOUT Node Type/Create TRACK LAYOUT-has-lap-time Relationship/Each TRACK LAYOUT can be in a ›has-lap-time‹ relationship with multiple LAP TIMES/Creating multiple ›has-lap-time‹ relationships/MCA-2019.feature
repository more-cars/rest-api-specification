@REQ_MCA-2009
Feature: Create TRACK LAYOUT-has-lap-time Relationship

  @RULE_MCA-2018
  Rule: Each TRACK LAYOUT can be in a ›has-lap-time‹ relationship with multiple LAP TIMES

    @TEST_MCA-2019 @implemented
    Scenario: Creating multiple ›has-lap-time‹ relationships
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "LAP TIME" "fastest lap (Alternative)"
      When the user creates a "has lap time" relationship between "Club Circuit" and "fastest lap"
      And the user creates a "has lap time" relationship between "Club Circuit" and "fastest lap (Alternative)"
      Then there should exist a "has lap time" relationship between "Club Circuit" and "fastest lap"
      And there should exist a "has lap time" relationship between "Club Circuit" and "fastest lap (Alternative)"
