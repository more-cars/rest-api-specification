@REQ_MCA-2548
Feature: Create GAMING PLATFORM-has-image Relationship

  @RULE_MCA-2557
  Rule: Each GAMING PLATFORM can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-2558 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "IMAGE" "PS5 logo"
      And there exists a "IMAGE" "PS5 logo (Alternative)"
      When the user creates a "has image" relationship between "PlayStation 5" and "PS5 logo"
      And the user creates a "has image" relationship between "PlayStation 5" and "PS5 logo (Alternative)"
      Then there should exist a "has image" relationship between "PlayStation 5" and "PS5 logo"
      And there should exist a "has image" relationship between "PlayStation 5" and "PS5 logo (Alternative)"
