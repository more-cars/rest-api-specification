@REQ_MCA-2150
Feature: Create CAR MODEL VARIANT-has-image Relationship

  @RULE_MCA-2159
  Rule: Each CAR MODEL VARIANT can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-2160 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And there exists a "IMAGE" "M3 poster"
      And there exists a "IMAGE" "M3 poster (Alternative)"
      When the user creates a "has image" relationship between "BMW M3" and "M3 poster"
      And the user creates a "has image" relationship between "BMW M3" and "M3 poster (Alternative)"
      Then there should exist a "has image" relationship between "BMW M3" and "M3 poster"
      And there should exist a "has image" relationship between "BMW M3" and "M3 poster (Alternative)"
