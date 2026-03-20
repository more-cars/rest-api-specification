@REQ_MCA-4154
Feature: Create CAR MODEL VARIANT-has-price Relationship

  @RULE_MCA-4157
  Rule: Requests to create a ›has-price‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4158 @implemented
    Scenario: Trying to create a ›has-price‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And there exists a "PRICE" "base price"
      When the user creates a "has price" relationship between "BMW M3" and "base price"
      Then the request should be rejected with status code 404
