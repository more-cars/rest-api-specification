@REQ_MCA-5379
Feature: Delete LAP TIME-documented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-5380
  Rule: The ›documented-in-magazine-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5381
    Scenario: Deleting the ›documented-in-magazine-issue‹ relationship when it actually exists
      Given there exists a "LAP TIME" "test lap"
      And there exists a "MAGAZINE ISSUE" "Top Gear 11_2025"
      And there exists a "documented in magazine issue" relationship "R" between "test lap" and "Top Gear 11_2025"
      When the user deletes the "documented in magazine issue" relationship between "test lap" and "Top Gear 11_2025"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
