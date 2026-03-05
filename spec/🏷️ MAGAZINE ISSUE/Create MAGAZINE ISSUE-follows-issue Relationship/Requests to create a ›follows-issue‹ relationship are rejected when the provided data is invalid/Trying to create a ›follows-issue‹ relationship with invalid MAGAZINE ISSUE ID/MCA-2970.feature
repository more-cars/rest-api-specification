@REQ_MCA-2965
Feature: Create MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2968
  Rule: Requests to create a ›follows-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2970 @implemented
    Scenario: Trying to create a ›follows-issue‹ relationship with invalid MAGAZINE ISSUE ID
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And "MAGAZINE ISSUE" "Top Gear 2_2025" does NOT exist
      When the user creates a "follows issue" relationship between "Top Gear 3_2025" and "Top Gear 2_2025"
      Then the request should be rejected with status code 404
