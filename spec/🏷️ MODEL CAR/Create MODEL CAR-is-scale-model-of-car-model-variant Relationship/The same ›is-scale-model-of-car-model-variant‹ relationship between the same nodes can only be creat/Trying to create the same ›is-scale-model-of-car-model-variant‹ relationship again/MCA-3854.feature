@REQ_MCA-3846
Feature: Create MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3853
  Rule: The same ›is-scale-model-of-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-3854
    Scenario: Trying to create the same ›is-scale-model-of-car-model-variant‹ relationship again
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "CAR MODEL VARIANT" "Ferrari F40"
      And there exists a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      When the user creates a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      Then the response should return with status code 304
