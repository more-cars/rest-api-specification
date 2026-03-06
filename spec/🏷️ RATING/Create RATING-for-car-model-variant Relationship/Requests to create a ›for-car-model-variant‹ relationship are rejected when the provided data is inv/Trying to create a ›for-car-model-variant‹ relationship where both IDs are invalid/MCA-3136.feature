@REQ_MCA-3130
Feature: Create RATING-for-car-model-variant Relationship

  @RULE_MCA-3133
  Rule: Requests to create a ›for-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3136 @implemented
    Scenario: Trying to create a ›for-car-model-variant‹ relationship where both IDs are invalid
      Given "RATING" "93 Percent" does NOT exist
      And "CAR MODEL VARIANT" "McLaren 750S" does NOT exist
      When the user creates a "for car model variant" relationship between "93 Percent" and "McLaren 750S"
      Then the request should be rejected with status code 404
