@REQ_MCA-2956
Feature: Delete MAGAZINE ISSUE-followed-by-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2957
  Rule: The ›followed-by-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2958 @implemented
    Scenario: Deleting the ›followed-by-issue‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "AutoBild 4_2025"
      And there exists a "followed by issue" relationship "R" between "Top Gear 3_2025" and "AutoBild 4_2025"
      When the user deletes the "followed by issue" relationship between "Top Gear 3_2025" and "AutoBild 4_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
