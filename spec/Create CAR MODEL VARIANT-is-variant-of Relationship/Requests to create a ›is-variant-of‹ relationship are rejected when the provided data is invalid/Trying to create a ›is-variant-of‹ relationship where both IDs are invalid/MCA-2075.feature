@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2072
  Rule: Requests to create a ›is-variant-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2075 @implemented
    Scenario: Trying to create a ›is-variant-of‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And "CAR MODEL" "3-series" does NOT exist
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then the request should be rejected with status code 404
