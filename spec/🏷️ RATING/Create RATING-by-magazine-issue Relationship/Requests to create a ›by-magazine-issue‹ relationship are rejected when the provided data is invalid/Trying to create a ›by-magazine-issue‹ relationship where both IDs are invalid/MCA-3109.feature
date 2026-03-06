@REQ_MCA-3103
Feature: Create RATING-by-magazine-issue Relationship

  @RULE_MCA-3106
  Rule: Requests to create a ›by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3109 @implemented
    Scenario: Trying to create a ›by-magazine-issue‹ relationship where both IDs are invalid
      Given "RATING" "93 Percent" does NOT exist
      And "MAGAZINE ISSUE" "Top Gear 7_2025" does NOT exist
      When the user creates a "by magazine issue" relationship between "93 Percent" and "Top Gear 7_2025"
      Then the request should be rejected with status code 404
