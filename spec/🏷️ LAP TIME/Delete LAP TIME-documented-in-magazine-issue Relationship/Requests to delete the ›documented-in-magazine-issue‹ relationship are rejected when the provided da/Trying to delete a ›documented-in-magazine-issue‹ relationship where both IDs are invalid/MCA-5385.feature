@REQ_MCA-5379
Feature: Delete LAP TIME-documented-in-magazine-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from LAP TIMES
  So I can clean up bad data or test data

  @RULE_MCA-5382
  Rule: Requests to delete the ›documented-in-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5385
    Scenario: Trying to delete a ›documented-in-magazine-issue‹ relationship where both IDs are invalid
      Given "LAP TIME" "test lap" does NOT exist
      And "MAGAZINE ISSUE" "Top Gear 11_2025" does NOT exist
      When the user deletes the "documented in magazine issue" relationship between "test lap" and "Top Gear 11_2025"
      Then the request should be rejected with status code 404
