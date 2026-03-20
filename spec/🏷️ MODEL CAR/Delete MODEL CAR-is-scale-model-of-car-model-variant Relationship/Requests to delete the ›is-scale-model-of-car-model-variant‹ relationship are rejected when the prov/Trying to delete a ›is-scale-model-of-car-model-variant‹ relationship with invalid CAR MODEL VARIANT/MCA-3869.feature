@REQ_MCA-3864
Feature: Delete MODEL CAR-is-scale-model-of-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3867
  Rule: Requests to delete the ›is-scale-model-of-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3869 @implemented
    Scenario: Trying to delete a ›is-scale-model-of-car-model-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And "CAR MODEL VARIANT" "Trabant 601" does NOT exist
      When the user deletes the "is scale model of car model variant" relationship between "F40 Matchbox" and "Trabant 601"
      Then the request should be rejected with status code 404
