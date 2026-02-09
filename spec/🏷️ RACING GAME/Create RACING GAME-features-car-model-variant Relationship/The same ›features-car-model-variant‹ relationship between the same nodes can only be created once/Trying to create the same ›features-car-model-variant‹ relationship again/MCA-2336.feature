@REQ_MCA-2328
Feature: Create RACING GAME-features-car-model-variant Relationship

  @RULE_MCA-2335
  Rule: The same ›features-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-2336
    Scenario: Trying to create the same ›features-car-model-variant‹ relationship again
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exists a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      When the user creates a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      Then the response should return with status code 304
