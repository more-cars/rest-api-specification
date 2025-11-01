@REQ_MCA-2188
Feature: Get CAR MODEL VARIANT-has-prime-image Relationship

  @RULE_MCA-2193
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2194 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      When the user requests the "has prime image" relationship for "BMW M3"
      Then the request should be rejected with status code 404
