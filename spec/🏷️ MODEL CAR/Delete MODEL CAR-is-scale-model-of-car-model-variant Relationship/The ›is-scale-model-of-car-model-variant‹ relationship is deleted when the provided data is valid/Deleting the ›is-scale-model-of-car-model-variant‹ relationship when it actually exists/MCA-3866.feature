@REQ_MCA-3864
Feature: Delete MODEL CAR-is-scale-model-of-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3865
  Rule: The ›is-scale-model-of-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3866 @implemented
    Scenario: Deleting the ›is-scale-model-of-car-model-variant‹ relationship when it actually exists
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And there exists a "CAR MODEL VARIANT" "Trabant 601"
      And there exists a "is scale model of car model variant" relationship "R" between "F40 Matchbox" and "Trabant 601"
      When the user deletes the "is scale model of car model variant" relationship between "F40 Matchbox" and "Trabant 601"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
