@REQ_MCA-3157
Feature: Create RATING-has-image Relationship

  @RULE_MCA-3166
  Rule: Each RATING can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-3167 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RATING" "93 Percent"
      And there exists a "IMAGE" "Top Rating"
      And there exists a "IMAGE" "Top Rating (Alternative)"
      When the user creates a "has image" relationship between "93 Percent" and "Top Rating"
      And the user creates a "has image" relationship between "93 Percent" and "Top Rating (Alternative)"
      Then there should exist a "has image" relationship between "93 Percent" and "Top Rating"
      And there should exist a "has image" relationship between "93 Percent" and "Top Rating (Alternative)"
