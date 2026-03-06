@REQ_MCA-3256
Feature: Delete MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-3259
  Rule: Requests to delete the ›reviewed-car-model-variant-with-rating‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3262 @implemented
    Scenario: Trying to delete a ›reviewed-car-model-variant-with-rating‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "Top Gear 7_2025" does NOT exist
      And "RATING" "invalid rating" does NOT exist
      When the user deletes the "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "invalid rating"
      Then the request should be rejected with status code 404
