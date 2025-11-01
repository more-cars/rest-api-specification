@REQ_MCA-2150
Feature: Create CAR MODEL VARIANT-has-image Relationship

  @RULE_MCA-2153
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2155 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And "IMAGE" "M3 poster" does NOT exist
      When the user creates a "has image" relationship between "BMW M3" and "M3 poster"
      Then the request should be rejected with status code 404
