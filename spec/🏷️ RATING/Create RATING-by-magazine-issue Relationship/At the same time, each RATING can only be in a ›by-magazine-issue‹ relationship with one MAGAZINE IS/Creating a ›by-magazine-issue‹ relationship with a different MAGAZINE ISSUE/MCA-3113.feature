@REQ_MCA-3103
Feature: Create RATING-by-magazine-issue Relationship

  @RULE_MCA-3112
  Rule: At the same time, each RATING can only be in a ›by-magazine-issue‹ relationship with one MAGAZINE ISSUE

    @TEST_MCA-3113 @implemented
    Scenario: Creating a ›by-magazine-issue‹ relationship with a different MAGAZINE ISSUE
      Given there exists a "RATING" "93 Percent"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025 (Alternative)"
      When the user creates a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      Then there should exist a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      When the user creates a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025 (Alternative)"
      Then there should exist a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025 (Alternative)"
      But there should exist NO "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
