@REQ_MCA-5143
Feature: Delete MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5146
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5149
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "Top Gear 03_2026" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
