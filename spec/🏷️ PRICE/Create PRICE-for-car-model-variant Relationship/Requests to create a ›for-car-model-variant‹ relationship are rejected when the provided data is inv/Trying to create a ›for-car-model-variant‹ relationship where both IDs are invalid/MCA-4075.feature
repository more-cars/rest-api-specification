@REQ_MCA-4069
Feature: Create PRICE-for-car-model-variant Relationship

  @RULE_MCA-4072
  Rule: Requests to create a ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4075 @implemented
    Scenario: Trying to create a ›for-car-model-variant‹ relationship where both IDs are invalid
      Given "PRICE" "Brand New" does NOT exist
      And "CAR MODEL VARIANT" "Porsche Carrera GT" does NOT exist
      When the user creates a "for car model variant" relationship between "Brand New" and "Porsche Carrera GT"
      Then the request should be rejected with status code 404
