@REQ_MCA-2123
Feature: Create CAR MODEL VARIANT-achieved-lap-time Relationship

  @RULE_MCA-2132
  Rule: Each CAR MODEL VARIANT can be in a ›achieved-lap-time‹ relationship with multiple LAP TIMES

    @TEST_MCA-2133 @implemented
    Scenario: Creating multiple ›achieved-lap-time‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "LAP TIME" "fastest lap (Alternative)"
      When the user creates a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      And the user creates a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap (Alternative)"
      Then there should exist a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap"
      And there should exist a "achieved lap time" relationship between "BMW M3 GTR" and "fastest lap (Alternative)"
