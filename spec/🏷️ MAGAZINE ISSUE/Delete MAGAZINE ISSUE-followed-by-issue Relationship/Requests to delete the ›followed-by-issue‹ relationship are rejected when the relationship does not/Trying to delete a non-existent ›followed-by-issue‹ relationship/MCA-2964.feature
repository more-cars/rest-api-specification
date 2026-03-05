@REQ_MCA-2956
Feature: Delete MAGAZINE ISSUE-followed-by-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2963
  Rule: Requests to delete the ›followed-by-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2964 @implemented
    Scenario: Trying to delete a non-existent ›followed-by-issue‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Top Gear 3_2025"
      And there exists a "MAGAZINE ISSUE" "AutoBild 4_2025"
      And there exists NO "followed by issue" relationship between "Top Gear 3_2025" and "AutoBild 4_2025"
      When the user deletes the "followed by issue" relationship between "Top Gear 3_2025" and "AutoBild 4_2025"
      Then the request should be rejected with status code 404
