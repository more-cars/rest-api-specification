@REQ_MCA-3727
Feature: Create CAR MODEL-covered-by-programme-episode Relationship

  @RULE_MCA-3736
  Rule: Each CAR MODEL can be in a ›covered-by-programme-episode‹ relationship with multiple PROGRAMME EPISODES

    @TEST_MCA-3737 @implemented
    Scenario: Creating multiple ›covered-by-programme-episode‹ relationships
      Given there exists a "CAR MODEL" "McLaren P1"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity (Alternative)"
      When the user creates a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      And the user creates a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity (Alternative)"
      Then there should exist a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity"
      And there should exist a "covered by programme episode" relationship between "McLaren P1" and "The Holy Trinity (Alternative)"
