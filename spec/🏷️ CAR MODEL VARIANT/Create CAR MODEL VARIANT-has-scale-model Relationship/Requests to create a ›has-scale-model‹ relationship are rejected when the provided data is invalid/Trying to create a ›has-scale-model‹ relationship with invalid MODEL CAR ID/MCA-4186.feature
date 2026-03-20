@REQ_MCA-4181
Feature: Create CAR MODEL VARIANT-has-scale-model Relationship

  @RULE_MCA-4184
  Rule: Requests to create a ›has-scale-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4186 @implemented
    Scenario: Trying to create a ›has-scale-model‹ relationship with invalid MODEL CAR ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And "MODEL CAR" "Hotwheels M3" does NOT exist
      When the user creates a "has scale model" relationship between "BMW M3 CSL" and "Hotwheels M3"
      Then the request should be rejected with status code 404
