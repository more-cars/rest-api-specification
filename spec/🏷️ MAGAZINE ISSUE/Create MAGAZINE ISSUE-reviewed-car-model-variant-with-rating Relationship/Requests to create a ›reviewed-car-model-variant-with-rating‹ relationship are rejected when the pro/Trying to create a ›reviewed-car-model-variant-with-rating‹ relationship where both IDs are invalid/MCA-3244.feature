@REQ_MCA-3238
Feature: Create MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship

  @RULE_MCA-3241
  Rule: Requests to create a ›reviewed-car-model-variant-with-rating‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3244 @implemented
    Scenario: Trying to create a ›reviewed-car-model-variant-with-rating‹ relationship where both IDs are invalid
      Given "MAGAZINE ISSUE" "Top Gear 7_2025" does NOT exist
      And "RATING" "93 Percent" does NOT exist
      When the user creates a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      Then the request should be rejected with status code 404
