@REQ_MCA-3121
Feature: Delete RATING-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3122
  Rule: The ›by-magazine-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3123 @implemented
    Scenario: Deleting the ›by-magazine-issue‹ relationship when it actually exists
      Given there exists a "RATING" "invalid rating"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "by magazine issue" relationship "R" between "invalid rating" and "Top Gear 7_2025"
      When the user deletes the "by magazine issue" relationship between "invalid rating" and "Top Gear 7_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
