@REQ_MCA-2956
Feature: Delete MAGAZINE ISSUE-followed-by-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2959
  Rule: Requests to delete the ›followed-by-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2961
    Scenario: Trying to delete a ›followed-by-issue‹ relationship with invalid MAGAZINE ISSUE ID
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And "MAGAZINE ISSUE" "AutoBild 4_2025" does NOT exist
      When the user deletes the "followed by issue" relationship between "Top Gear 3_2025" and "AutoBild 4_2025"
      Then the request should be rejected with status code 404
