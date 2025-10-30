@REQ_MCA-2150
Feature: Create CAR MODEL VARIANT-has-image Relationship

  @RULE_MCA-2153
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2154 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And there exists a "IMAGE" "M3 poster"
      When the user creates a "has image" relationship between "BMW M3" and "M3 poster"
      Then the request should be rejected with status code 404
