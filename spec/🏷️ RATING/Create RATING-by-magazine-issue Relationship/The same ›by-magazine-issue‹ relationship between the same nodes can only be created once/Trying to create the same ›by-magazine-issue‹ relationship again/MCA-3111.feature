@REQ_MCA-3103
Feature: Create RATING-by-magazine-issue Relationship

  @RULE_MCA-3110
  Rule: The same ›by-magazine-issue‹ relationship between the same nodes can only be created once

    @TEST_MCA-3111 @implemented
    Scenario: Trying to create the same ›by-magazine-issue‹ relationship again
      Given there exists a "RATING" "93 Percent"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      When the user creates a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      Then the response should return with status code 304
