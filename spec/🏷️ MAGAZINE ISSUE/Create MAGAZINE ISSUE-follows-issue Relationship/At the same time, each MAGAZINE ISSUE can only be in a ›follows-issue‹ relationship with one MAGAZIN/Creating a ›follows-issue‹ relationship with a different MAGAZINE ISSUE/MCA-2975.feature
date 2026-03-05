@REQ_MCA-2965
Feature: Create MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2974
  Rule: At the same time, each MAGAZINE ISSUE can only be in a ›follows-issue‹ relationship with one MAGAZINE ISSUE

    @TEST_MCA-2975 @implemented
    Scenario: Creating a ›follows-issue‹ relationship with a different MAGAZINE ISSUE
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 2_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 2_2025 (Alternative)"
      When the user creates a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      Then there should exist a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      When the user creates a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025 (Alternative)"
      Then there should exist a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025 (Alternative)"
      But there should exist NO "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
