@REQ_MCA-2976
Feature: Get MAGAZINE ISSUE-follows-issue Relationship

  @RULE_MCA-2981
  Rule: Requests to fetch the ›follows-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2982
    Scenario: Trying to fetch the ›follows-issue‹ relationship with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 3_2025" does NOT exist
      When the user requests the "follows issue" relationship for "Top Gear 3_2025"
      Then the request should be rejected with status code 404
