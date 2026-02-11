@REQ_MCA-2437
Feature: Create CAR MODEL VARIANT-is-featured-in-racing-game Relationship

  @RULE_MCA-2446
  Rule: Each CAR MODEL VARIANT can be in a ›is-featured-in-racing-game‹ relationship with multiple RACING GAMES

    @TEST_MCA-2447 @implemented
    Scenario: Creating multiple ›is-featured-in-racing-game‹ relationships
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exists a "RACING GAME" "Gran Turismo"
      And there exists a "RACING GAME" "Gran Turismo (Alternative)"
      When the user creates a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      And the user creates a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo (Alternative)"
      Then there should exist a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      And there should exist a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo (Alternative)"
