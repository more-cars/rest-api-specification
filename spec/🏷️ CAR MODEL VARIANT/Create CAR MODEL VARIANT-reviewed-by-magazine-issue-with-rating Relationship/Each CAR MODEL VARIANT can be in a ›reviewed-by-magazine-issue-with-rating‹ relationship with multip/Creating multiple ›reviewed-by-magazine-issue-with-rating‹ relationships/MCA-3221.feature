@REQ_MCA-3211
Feature: Create CAR MODEL VARIANT-reviewed-by-magazine-issue-with-rating Relationship

  @RULE_MCA-3220
  Rule: Each CAR MODEL VARIANT can be in a ›reviewed-by-magazine-issue-with-rating‹ relationship with multiple RATINGS

    @TEST_MCA-3221 @implemented
    Scenario: Creating multiple ›reviewed-by-magazine-issue-with-rating‹ relationships
      Given there exists a "CAR MODEL VARIANT" "McLaren 750S"
      And there exists a "RATING" "93 Percent"
      And there exists a "RATING" "93 Percent (Alternative)"
      When the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      And the user creates a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent (Alternative)"
      Then there should exist a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent"
      And there should exist a "reviewed by magazine issue with rating" relationship between "McLaren 750S" and "93 Percent (Alternative)"
