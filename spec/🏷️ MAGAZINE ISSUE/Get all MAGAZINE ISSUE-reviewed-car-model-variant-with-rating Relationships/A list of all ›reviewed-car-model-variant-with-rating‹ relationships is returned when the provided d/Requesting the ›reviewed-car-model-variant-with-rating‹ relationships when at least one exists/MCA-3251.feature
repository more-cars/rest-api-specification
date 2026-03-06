@REQ_MCA-3249
Feature: Get all MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationships

  @RULE_MCA-3250
  Rule: A list of all ›reviewed-car-model-variant-with-rating‹ relationships is returned when the provided data is valid

    @TEST_MCA-3251 @implemented
    Scenario: Requesting the ›reviewed-car-model-variant-with-rating‹ relationships when at least one exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exist 3 "reviewed car model variant with rating" relationships for "Top Gear 7_2025"
      When the user requests all "reviewed car model variant with rating" relationships for "Top Gear 7_2025"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "reviewed car model variant with rating" relationships
