@REQ_MCA-2938
Feature: Create MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2941
  Rule: Requests to create a ›followed-by-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2944 @implemented
    Scenario: Trying to create a ›followed-by-issue‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "Top Gear 3_2025" does NOT exist
      And "MAGAZINE ISSUE" "Top Gear 4_2025" does NOT exist
      When the user creates a "followed by issue" relationship between "Top Gear 3_2025" and "Top Gear 4_2025"
      Then the request should be rejected with status code 404
