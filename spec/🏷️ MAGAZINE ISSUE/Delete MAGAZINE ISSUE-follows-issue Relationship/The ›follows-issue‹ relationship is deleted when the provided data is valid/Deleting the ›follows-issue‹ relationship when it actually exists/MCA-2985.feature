@REQ_MCA-2983
Feature: Delete MAGAZINE ISSUE-follows-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2984
  Rule: The ›follows-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2985
    Scenario: Deleting the ›follows-issue‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "AutoBild 2_2025"
      And there exists a "follows issue" relationship "R" between "Top Gear 3_2025" and "AutoBild 2_2025"
      When the user deletes the "follows issue" relationship between "Top Gear 3_2025" and "AutoBild 2_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
