@REQ_MCA-3754
Feature: Create CAR MODEL VARIANT-featured-in-programme-episode Relationship

  @RULE_MCA-3763
  Rule: Each CAR MODEL VARIANT can be in a ›featured-in-programme-episode‹ relationship with multiple PROGRAMME EPISODES

    @TEST_MCA-3764
    Scenario: Creating multiple ›featured-in-programme-episode‹ relationships
      Given there exists a "CAR MODEL VARIANT" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity (Alternative)"
      When the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      And the user creates a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity (Alternative)"
      Then there should exist a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      And there should exist a "featured in programme episode" relationship between "McLaren P1" and "The Holy Trinity (Alternative)"
