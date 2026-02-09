@REQ_MCA-2328
Feature: Create RACING GAME-features-car-model-variant Relationship

  @RULE_MCA-2337
  Rule: Each RACING GAME can be in a ›features-car-model-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-2338
    Scenario: Creating multiple ›features-car-model-variant‹ relationships
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exists a "CAR MODEL VARIANT" "Aston Martin DB7 (Alternative)"
      When the user creates a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      And the user creates a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7 (Alternative)"
      Then there should exist a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      And there should exist a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7 (Alternative)"
