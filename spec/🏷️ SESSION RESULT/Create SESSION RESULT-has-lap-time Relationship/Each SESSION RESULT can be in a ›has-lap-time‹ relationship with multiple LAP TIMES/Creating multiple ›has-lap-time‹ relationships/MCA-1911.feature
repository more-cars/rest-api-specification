@REQ_MCA-1901
Feature: Create SESSION RESULT-has-lap-time Relationship

  @RULE_MCA-1910
  Rule: Each SESSION RESULT can be in a ›has-lap-time‹ relationship with multiple LAP TIMES

    @TEST_MCA-1911 @implemented
    Scenario: Creating multiple ›has-lap-time‹ relationships
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "LAP TIME" "fastest lap"
      And there exists a "LAP TIME" "fastest lap (Alternative)"
      When the user creates a "has lap time" relationship between "Grand Prix" and "fastest lap"
      And the user creates a "has lap time" relationship between "Grand Prix" and "fastest lap (Alternative)"
      Then there should exist a "has lap time" relationship between "Grand Prix" and "fastest lap"
      And there should exist a "has lap time" relationship between "Grand Prix" and "fastest lap (Alternative)"
