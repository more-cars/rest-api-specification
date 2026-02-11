@REQ_MCA-2382
Feature: Create RACING GAME-has-image Relationship

  @RULE_MCA-2391
  Rule: Each RACING GAME can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-2392 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "IMAGE" "dvd cover"
      And there exists a "IMAGE" "dvd cover (Alternative)"
      When the user creates a "has image" relationship between "F1 2025" and "dvd cover"
      And the user creates a "has image" relationship between "F1 2025" and "dvd cover (Alternative)"
      Then there should exist a "has image" relationship between "F1 2025" and "dvd cover"
      And there should exist a "has image" relationship between "F1 2025" and "dvd cover (Alternative)"
