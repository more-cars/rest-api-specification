@REQ_MCA-3238
Feature: Create MAGAZINE ISSUE-reviewed-car-model-variant-with-rating Relationship

  @RULE_MCA-3247
  Rule: Each MAGAZINE ISSUE can be in a ›reviewed-car-model-variant-with-rating‹ relationship with multiple RATINGS

    @TEST_MCA-3248 @implemented
    Scenario: Creating multiple ›reviewed-car-model-variant-with-rating‹ relationships
      Given there exists a "MAGAZINE ISSUE" "Top Gear 7_2025"
      And there exists a "RATING" "93 Percent"
      And there exists a "RATING" "93 Percent (Alternative)"
      When the user creates a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      And the user creates a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent (Alternative)"
      Then there should exist a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent"
      And there should exist a "reviewed car model variant with rating" relationship between "Top Gear 7_2025" and "93 Percent (Alternative)"
