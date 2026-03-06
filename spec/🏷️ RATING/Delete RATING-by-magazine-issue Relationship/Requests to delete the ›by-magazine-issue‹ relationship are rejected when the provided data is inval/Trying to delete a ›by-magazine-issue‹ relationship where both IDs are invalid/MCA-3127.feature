@REQ_MCA-3121
Feature: Delete RATING-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3124
  Rule: Requests to delete the ›by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3127 @implemented
    Scenario: Trying to delete a ›by-magazine-issue‹ relationship where both IDs are invalid
      Given "RATING" "invalid rating" does NOT exist
      And "MAGAZINE ISSUE" "Top Gear 7_2025" does NOT exist
      When the user deletes the "by magazine issue" relationship between "invalid rating" and "Top Gear 7_2025"
      Then the request should be rejected with status code 404
