@REQ_MCA-2328
Feature: Create RACING GAME-features-car-model-variant Relationship

  @RULE_MCA-2331
  Rule: Requests to create a ›features-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2334 @implemented
    Scenario: Trying to create a ›features-car-model-variant‹ relationship where both IDs are invalid
      Given "RACING GAME" "Gran Turismo" does NOT exist
      And "CAR MODEL VARIANT" "Aston Martin DB7" does NOT exist
      When the user creates a "features car model variant" relationship between "Gran Turismo" and "Aston Martin DB7"
      Then the request should be rejected with status code 404
