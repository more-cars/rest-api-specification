@REQ_MCA-5170
Feature: Delete MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MAGAZINE ISSUE
  So I can clean up bad data or test data

  @RULE_MCA-5173
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5174
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 03_2026" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
