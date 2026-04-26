@REQ_MCA-5361
Feature: Create LAP TIME-documented-in-magazine-issue Relationship

  @RULE_MCA-5370
  Rule: At the same time, each LAP TIME can only be in a ›documented-in-magazine-issue‹ relationship with one MAGAZINE ISSUE

    @TEST_MCA-5371
    Scenario: Creating a ›documented-in-magazine-issue‹ relationship with a different MAGAZINE ISSUE
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025 (Alternative)"
      When the user creates a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      Then there should exist a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
      When the user creates a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025 (Alternative)"
      Then there should exist a "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025 (Alternative)"
      But there should exist NO "documented in magazine issue" relationship between "fastest lap" and "Top Gear 11_2025"
