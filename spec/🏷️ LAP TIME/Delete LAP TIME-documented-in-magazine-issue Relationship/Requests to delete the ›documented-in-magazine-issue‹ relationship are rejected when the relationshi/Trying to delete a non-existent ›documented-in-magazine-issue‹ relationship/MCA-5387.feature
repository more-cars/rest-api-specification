@REQ_MCA-5379
Feature: Delete LAP TIME-documented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-5386
  Rule: Requests to delete the ›documented-in-magazine-issue‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5387
    Scenario: Trying to delete a non-existent ›documented-in-magazine-issue‹ relationship
      Given there exists a "LAP TIME" "test lap"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists NO "documented in magazine issue" relationship between "test lap" and "Top Gear 11_2025"
      When the user deletes the "documented in magazine issue" relationship between "test lap" and "Top Gear 11_2025"
      Then the request should be rejected with status code 404
