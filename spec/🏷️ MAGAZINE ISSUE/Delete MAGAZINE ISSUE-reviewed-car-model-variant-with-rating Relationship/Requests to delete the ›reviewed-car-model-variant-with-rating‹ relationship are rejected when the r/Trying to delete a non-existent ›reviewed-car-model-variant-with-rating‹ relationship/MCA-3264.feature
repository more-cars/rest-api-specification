@REQ_MCA-3256
Feature: Delete MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship
  As an API contributor
  I want to be able to disconnect RATINGS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-3263
  Rule: Requests to delete the ›reviewed-car-model-variant-with-rating‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-3264 @implemented
    Scenario: Trying to delete a non-existent ›reviewed-car-model-variant-with-rating‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "RATING" "invalid rating"
      And there exists NO "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "invalid rating"
      When the user deletes the "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "invalid rating"
      Then the request should be rejected with status code 404
