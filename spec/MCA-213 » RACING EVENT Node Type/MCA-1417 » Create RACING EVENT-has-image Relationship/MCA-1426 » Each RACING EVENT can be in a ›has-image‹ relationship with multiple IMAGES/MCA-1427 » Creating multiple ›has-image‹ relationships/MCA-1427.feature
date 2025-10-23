@REQ_MCA-1417
Feature: Create RACING EVENT-has-image Relationship

  @RULE_MCA-1426
  Rule: Each RACING EVENT can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1427 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exists a "IMAGE" "starting grid"
      And there exists a "IMAGE" "starting grid (Alternative)"
      When the user creates a "has image" relationship between "GP Silverstone" and "starting grid"
      And the user creates a "has image" relationship between "GP Silverstone" and "starting grid (Alternative)"
      Then there should exist a "has image" relationship between "GP Silverstone" and "starting grid"
      And there should exist a "has image" relationship between "GP Silverstone" and "starting grid (Alternative)"
