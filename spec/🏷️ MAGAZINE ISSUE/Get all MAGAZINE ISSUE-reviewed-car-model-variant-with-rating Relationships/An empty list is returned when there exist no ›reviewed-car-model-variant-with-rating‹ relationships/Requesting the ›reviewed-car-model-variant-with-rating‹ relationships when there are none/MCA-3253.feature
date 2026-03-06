@REQ_MCA-3249
Feature: Get all MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationships

  @RULE_MCA-3252
  Rule: An empty list is returned when there exist no ›reviewed-car-model-variant-with-rating‹ relationships for the given MAGAZINE ISSUE

    @TEST_MCA-3253 @implemented
    Scenario: Requesting the ›reviewed-car-model-variant-with-rating‹ relationships when there are none
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exist 0 "reviewed car model variant with rating" relationships for "Top Gear 7_2025"
      When the user requests all "reviewed car model variant with rating" relationships for "Top Gear 7_2025"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
