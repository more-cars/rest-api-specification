@REQ_MCA-2080
Feature: Get CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2085
  Rule: Requests to fetch the ›is-variant-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2086 @implemented
    Scenario: Trying to fetch the ›is-variant-of‹ relationship with an invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      When the user requests the "is variant of" relationship for "BMW M3"
      Then the request should be rejected with status code 404
