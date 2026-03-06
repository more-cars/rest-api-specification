@REQ_MCA-3249
Feature: Get all MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationships

  @RULE_MCA-3254
  Rule: A request to fetch all ›reviewed-car-model-variant-with-rating‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3255 @implemented
    Scenario: Trying to fetch the ›reviewed-car-model-variant-with-rating‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 7_2025" does NOT exist
      When the user requests all "reviewed car model variant with rating" relationships for "Top Gear 7_2025"
      Then the request should be rejected with status code 404
