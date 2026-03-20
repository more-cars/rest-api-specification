@REQ_MCA-4181
Feature: Create CAR MODEL VARIANT-has-scale-model Relationship

  @RULE_MCA-4184
  Rule: Requests to create a ›has-scale-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4185 @implemented
    Scenario: Trying to create a ›has-scale-model‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And there exists a "MODEL CAR" "Hotwheels M3"
      When the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      Then the request should be rejected with status code 404
