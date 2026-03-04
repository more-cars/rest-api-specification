@REQ_MCA-2949
Feature: Get MAGAZINE ISSUE-followed-by-issue Relationship

  @RULE_MCA-2954
  Rule: Requests to fetch the ›followed-by-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2955
    Scenario: Trying to fetch the ›followed-by-issue‹ relationship with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 3_2025" does NOT exist
      When the user requests the "followed by issue" relationship for "Top Gear 3_2025"
      Then the request should be rejected with status code 404
