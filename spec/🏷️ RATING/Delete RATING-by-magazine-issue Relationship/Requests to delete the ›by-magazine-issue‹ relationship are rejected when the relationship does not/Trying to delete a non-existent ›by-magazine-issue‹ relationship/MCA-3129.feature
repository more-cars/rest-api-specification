@REQ_MCA-3121
Feature: Delete RATING-by-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from RATINGS
  So I can clean up bad data or test data

  @RULE_MCA-3128
  Rule: Requests to delete the ›by-magazine-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3129 @implemented
    Scenario: Trying to delete a non-existent ›by-magazine-issue‹ relationship
      Given there exists a "RATING" "invalid rating"
      And there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists NO "by magazine issue" relationship between "invalid rating" and "Top Gear 7_2025"
      When the user deletes the "by magazine issue" relationship between "invalid rating" and "Top Gear 7_2025"
      Then the request should be rejected with status code 404
