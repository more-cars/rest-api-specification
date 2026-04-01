@REQ_MCA-5152
Feature: Create MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE ISSUE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5161
  Rule: At the same time, each MAGAZINE ISSUE can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-5162 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
