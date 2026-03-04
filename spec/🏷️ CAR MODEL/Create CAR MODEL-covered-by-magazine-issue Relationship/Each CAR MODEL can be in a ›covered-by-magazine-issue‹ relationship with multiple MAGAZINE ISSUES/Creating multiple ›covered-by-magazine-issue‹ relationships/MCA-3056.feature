@REQ_MCA-3046
Feature: Create CAR MODEL-covered-by-magazine-issue Relationship

  @RULE_MCA-3055
  Rule: Each CAR MODEL can be in a ›covered-by-magazine-issue‹ relationship with multiple MAGAZINE ISSUES

    @TEST_MCA-3056
    Scenario: Creating multiple ›covered-by-magazine-issue‹ relationships
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "MAGAZINE ISSUE" "50 Jahre GTI (Alternative)"
      When the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      And the user creates a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI (Alternative)"
      Then there should exist a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI"
      And there should exist a "covered by magazine issue" relationship between "Golf" and "50 Jahre GTI (Alternative)"
