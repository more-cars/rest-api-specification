@REQ_MCA-2069
Feature: Create CAR MODEL VARIANT-is-variant-of Relationship

  @RULE_MCA-2072
  Rule: Requests to create a ›is-variant-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2074 @implemented
    Scenario: Trying to create a ›is-variant-of‹ relationship with invalid CAR MODEL ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And "CAR MODEL" "3-series" does NOT exist
      When the user creates a "is variant of" relationship between "BMW M3" and "3-series"
      Then the request should be rejected with status code 404
