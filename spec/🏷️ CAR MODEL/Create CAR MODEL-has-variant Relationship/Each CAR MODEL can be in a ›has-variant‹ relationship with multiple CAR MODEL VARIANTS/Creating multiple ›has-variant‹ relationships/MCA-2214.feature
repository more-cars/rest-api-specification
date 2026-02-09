@REQ_MCA-2204
Feature: Create CAR MODEL-has-variant Relationship

  @RULE_MCA-2213
  Rule: Each CAR MODEL can be in a ›has-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-2214 @implemented
    Scenario: Creating multiple ›has-variant‹ relationships
      Given there exists a "CAR MODEL" "Golf"
      And there exists a "CAR MODEL VARIANT" "VW Golf GTI"
      And there exists a "CAR MODEL VARIANT" "VW Golf GTI (Alternative)"
      When the user creates a "has variant" relationship between "Golf" and "VW Golf GTI"
      And the user creates a "has variant" relationship between "Golf" and "VW Golf GTI (Alternative)"
      Then there should exist a "has variant" relationship between "Golf" and "VW Golf GTI"
      And there should exist a "has variant" relationship between "Golf" and "VW Golf GTI (Alternative)"
