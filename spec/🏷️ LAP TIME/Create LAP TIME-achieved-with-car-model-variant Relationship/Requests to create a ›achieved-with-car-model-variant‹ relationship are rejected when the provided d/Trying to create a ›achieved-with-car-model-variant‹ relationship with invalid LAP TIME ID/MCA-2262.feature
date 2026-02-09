@REQ_MCA-2258
Feature: Create LAP TIME-achieved-with-car-model-variant Relationship

  @RULE_MCA-2261
  Rule: Requests to create a ›achieved-with-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2262 @implemented
    Scenario: Trying to create a ›achieved-with-car-model-variant‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Opel Calibra V6"
      When the user creates a "achieved with car model variant" relationship between "fastest lap" and "Opel Calibra V6"
      Then the request should be rejected with status code 404
