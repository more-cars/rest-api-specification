@REQ_MCA-5125
Feature: Create MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE ISSUE
  So an API consumer can illustrate the MAGAZINE ISSUE node in a frontend application

  @RULE_MCA-5132
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5133 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      When the user creates a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the response should return with status code 304
