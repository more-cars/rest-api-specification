@REQ_MCA-2177
Feature: Create CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2180
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2183 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And "IMAGE" "M3 front-left" does NOT exist
      When the user creates a "has prime image" relationship between "BMW M3" and "M3 front-left"
      Then the request should be rejected with status code 404
