@REQ_MCA-5125
Feature: Create MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE ISSUE
  So an API consumer can illustrate the MAGAZINE ISSUE node in a frontend application

  @RULE_MCA-5134
  Rule: Each MAGAZINE ISSUE can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5135 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      And the user creates a "has-video" relationship between "Top Gear 03_2026" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      And there should exist a "has-video" relationship between "Top Gear 03_2026" and "Promo Video (Part 2)"
