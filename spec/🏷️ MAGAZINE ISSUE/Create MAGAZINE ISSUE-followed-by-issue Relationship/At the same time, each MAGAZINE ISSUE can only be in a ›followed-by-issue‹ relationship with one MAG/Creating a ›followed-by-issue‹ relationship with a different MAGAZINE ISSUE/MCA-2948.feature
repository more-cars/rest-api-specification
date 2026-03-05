@REQ_MCA-2938
Feature: Create MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2947
  Rule: At the same time, each MAGAZINE ISSUE can only be in a ›followed-by-issue‹ relationship with one MAGAZINE ISSUE

    @TEST_MCA-2948 @implemented
    Scenario: Creating a ›followed-by-issue‹ relationship with a different MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 4_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 4_2025 (Alternative)"
      When the user creates a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      Then there should exist a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      When the user creates a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025 (Alternative)"
      Then there should exist a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025 (Alternative)"
      But there should exist NO "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
