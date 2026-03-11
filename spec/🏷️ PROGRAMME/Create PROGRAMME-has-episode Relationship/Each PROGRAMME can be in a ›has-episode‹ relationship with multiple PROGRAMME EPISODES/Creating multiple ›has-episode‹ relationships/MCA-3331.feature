@REQ_MCA-3321
Feature: Create PROGRAMME-has-episode Relationship

  @RULE_MCA-3330
  Rule: Each PROGRAMME can be in a ›has-episode‹ relationship with multiple PROGRAMME EPISODES

    @TEST_MCA-3331
    Scenario: Creating multiple ›has-episode‹ relationships
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "PROGRAMME EPISODE" "The Holy Trinity (Alternative)"
      When the user creates a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      And the user creates a "has episode" relationship between "The Grand Tour" and "The Holy Trinity (Alternative)"
      Then there should exist a "has episode" relationship between "The Grand Tour" and "The Holy Trinity"
      And there should exist a "has episode" relationship between "The Grand Tour" and "The Holy Trinity (Alternative)"
