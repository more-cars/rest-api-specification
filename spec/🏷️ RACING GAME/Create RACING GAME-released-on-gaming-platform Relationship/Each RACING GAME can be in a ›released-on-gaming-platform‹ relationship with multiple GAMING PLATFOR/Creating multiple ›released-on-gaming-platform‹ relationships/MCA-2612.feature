@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2611
  Rule: Each RACING GAME can be in a ›released-on-gaming-platform‹ relationship with multiple GAMING PLATFORMS

    @TEST_MCA-2612 @implemented
    Scenario: Creating multiple ›released-on-gaming-platform‹ relationships
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "GAMING PLATFORM" "PlayStation 5 (Alternative)"
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      And the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5 (Alternative)"
      Then there should exist a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      And there should exist a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5 (Alternative)"
