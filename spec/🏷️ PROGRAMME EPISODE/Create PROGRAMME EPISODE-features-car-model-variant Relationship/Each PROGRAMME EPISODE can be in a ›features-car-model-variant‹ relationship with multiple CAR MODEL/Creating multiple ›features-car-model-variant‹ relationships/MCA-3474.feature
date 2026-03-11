@REQ_MCA-3464
Feature: Create PROGRAMME EPISODE-features-car-model-variant Relationship

  @RULE_MCA-3473
  Rule: Each PROGRAMME EPISODE can be in a ›features-car-model-variant‹ relationship with multiple CAR MODEL VARIANTS

    @TEST_MCA-3474
    Scenario: Creating multiple ›features-car-model-variant‹ relationships
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "CAR MODEL VARIANT" "Ferrari LaFerrari"
      And there exists a "CAR MODEL VARIANT" "Ferrari LaFerrari (Alternative)"
      When the user creates a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      And the user creates a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari (Alternative)"
      Then there should exist a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari"
      And there should exist a "features car model variant" relationship between "The Holy Trinity" and "Ferrari LaFerrari (Alternative)"
