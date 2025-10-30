@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2072
  Rule: Requests to create a ›is-variant-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2073 @implemented
    Scenario: Trying to create a ›is-variant-of‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And there exists a "CAR MODEL" "3-series"
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then the request should be rejected with status code 404
