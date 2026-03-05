@REQ_MCA-3019
Feature: Create RACING EVENT-covered-by-magazine-issue Relationship

  @RULE_MCA-3028
  Rule: Each RACING EVENT can be in a ›covered-by-magazine-issue‹ relationship with multiple MAGAZINE ISSUES

    @TEST_MCA-3029 @implemented
    Scenario: Creating multiple ›covered-by-magazine-issue‹ relationships
      Given there exists a "RACING EVENT" "F1 GP Australia"
      And there exists a "MAGAZINE ISSUE" "F1 Season Start"
      And there exists a "MAGAZINE ISSUE" "F1 Season Start (Alternative)"
      When the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      And the user creates a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start (Alternative)"
      Then there should exist a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start"
      And there should exist a "covered by magazine issue" relationship between "F1 GP Australia" and "F1 Season Start (Alternative)"
