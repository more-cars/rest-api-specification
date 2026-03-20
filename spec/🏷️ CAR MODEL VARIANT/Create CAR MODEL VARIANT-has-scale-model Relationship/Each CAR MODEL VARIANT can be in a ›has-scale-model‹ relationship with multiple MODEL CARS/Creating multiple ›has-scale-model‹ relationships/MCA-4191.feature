@REQ_MCA-4181
Feature: Create CAR MODEL VARIANT-has-scale-model Relationship

  @RULE_MCA-4190
  Rule: Each CAR MODEL VARIANT can be in a ›has-scale-model‹ relationship with multiple MODEL CARS

    @TEST_MCA-4191 @implemented
    Scenario: Creating multiple ›has-scale-model‹ relationships
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "MODEL CAR" "Hotwheels M3"
      And there exists a "MODEL CAR" "Hotwheels M3 (Alternative)"
      When the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      And the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3 (Alternative)"
      Then there should exist a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      And there should exist a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3 (Alternative)"
