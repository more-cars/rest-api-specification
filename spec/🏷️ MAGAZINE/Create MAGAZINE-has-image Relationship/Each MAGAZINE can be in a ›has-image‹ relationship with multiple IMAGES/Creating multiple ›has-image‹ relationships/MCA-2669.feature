@REQ_MCA-2659
Feature: Create MAGAZINE-has-image Relationship

  @RULE_MCA-2668
  Rule: Each MAGAZINE can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-2669 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      And there exists a "IMAGE" "cover (Alternative)"
      When the user creates a "has image" relationship between "Top Gear" and "cover"
      And the user creates a "has image" relationship between "Top Gear" and "cover (Alternative)"
      Then there should exist a "has image" relationship between "Top Gear" and "cover"
      And there should exist a "has image" relationship between "Top Gear" and "cover (Alternative)"
