@REQ_MCA-2830
Feature: Create MAGAZINE-has-issue Relationship

  @RULE_MCA-2839
  Rule: Each MAGAZINE can be in a ›has-issue‹ relationship with multiple MAGAZINE ISSUES

    @TEST_MCA-2840 @implemented
    Scenario: Creating multiple ›has-issue‹ relationships
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "MAGAZINE ISSUE" "Best Sportscars 2015"
      And there exists a "MAGAZINE ISSUE" "Best Sportscars 2015 (Alternative)"
      When the user creates a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      And the user creates a "has issue" relationship between "Top Gear" and "Best Sportscars 2015 (Alternative)"
      Then there should exist a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      And there should exist a "has issue" relationship between "Top Gear" and "Best Sportscars 2015 (Alternative)"
