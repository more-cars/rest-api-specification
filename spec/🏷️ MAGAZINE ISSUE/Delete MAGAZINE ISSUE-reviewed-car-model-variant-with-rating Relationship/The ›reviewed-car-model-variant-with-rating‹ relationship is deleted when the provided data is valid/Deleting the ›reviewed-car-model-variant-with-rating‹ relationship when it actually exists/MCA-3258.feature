@REQ_MCA-3256
Feature: Delete MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-3257
  Rule: The ›reviewed-car-model-variant-with-rating‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3258 @implemented
    Scenario: Deleting the ›reviewed-car-model-variant-with-rating‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "RATING" "invalid rating"
      And there exists a "reviewed car model variant with rating" relationship "R" between "Top Gear 7_2025" and "invalid rating"
      When the user deletes the "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "invalid rating"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
