@REQ_MCA-3998
Feature: Create MODEL CAR BRAND-has-image Relationship

  @RULE_MCA-4007
  Rule: Each MODEL CAR BRAND can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-4008 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "IMAGE" "Hot Wheels logo"
      And there exists a "IMAGE" "Hot Wheels logo (Alternative)"
      When the user creates a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      And the user creates a "has image" relationship between "Hot Wheels" and "Hot Wheels logo (Alternative)"
      Then there should exist a "has image" relationship between "Hot Wheels" and "Hot Wheels logo"
      And there should exist a "has image" relationship between "Hot Wheels" and "Hot Wheels logo (Alternative)"
