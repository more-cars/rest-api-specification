@REQ_MCA-3437
Feature: Create PROGRAMME EPISODE-covers-car-model Relationship

  @RULE_MCA-3446
  Rule: Each PROGRAMME EPISODE can be in a ›covers-car-model‹ relationship with multiple CAR MODELS

    @TEST_MCA-3447 @implemented
    Scenario: Creating multiple ›covers-car-model‹ relationships
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL" "LaFerrari"
      And there exists a "CAR MODEL" "LaFerrari (Alternative)"
      When the user creates a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      And the user creates a "covers car model" relationship between "The Holy Trinity" and "LaFerrari (Alternative)"
      Then there should exist a "covers car model" relationship between "The Holy Trinity" and "LaFerrari"
      And there should exist a "covers car model" relationship between "The Holy Trinity" and "LaFerrari (Alternative)"
