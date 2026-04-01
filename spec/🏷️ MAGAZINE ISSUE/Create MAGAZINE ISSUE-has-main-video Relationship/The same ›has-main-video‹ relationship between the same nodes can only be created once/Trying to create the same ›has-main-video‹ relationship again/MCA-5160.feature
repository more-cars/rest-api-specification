@REQ_MCA-5152
Feature: Create MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MAGAZINE ISSUE
  So an API consumer can instantly load the VIDEO that best represents the MAGAZINE ISSUE

  @RULE_MCA-5159
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5160 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the response should return with status code 304
