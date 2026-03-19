@REQ_MCA-3846
Feature: Create MODEL CAR-is-scale-model-of-car-model-variant Relationship

  @RULE_MCA-3849
  Rule: Requests to create a ›is-scale-model-of-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3851
    Scenario: Trying to create a ›is-scale-model-of-car-model-variant‹ relationship with invalid CAR MODEL VARIANT ID
      Given there exists a "MODEL CAR" "F40 Matchbox"
      And "CAR MODEL VARIANT" "Ferrari F40" does NOT exist
      When the user creates a "is scale model of car model variant" relationship between "F40 Matchbox" and "Ferrari F40"
      Then the request should be rejected with status code 404
