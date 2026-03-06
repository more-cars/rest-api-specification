@REQ_MCA-3238
Feature: Create MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship

  @RULE_MCA-3245
  Rule: The same ›reviewed-car-model-variant-with-rating‹ relationship between the same nodes can only be created once

    @TEST_MCA-3246 @implemented
    Scenario: Trying to create the same ›reviewed-car-model-variant-with-rating‹ relationship again
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "RATING" "93 Percent"
      And there exists a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      When the user creates a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      Then the response should return with status code 304
