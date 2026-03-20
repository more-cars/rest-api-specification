@REQ_MCA-4172
Feature: Delete CAR MODEL VARIANT-has-price Relationship
  As an API contributor
  I want to be able to disconnect PRICES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4175
  Rule: Requests to delete the ›has-price‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4176 @implemented
    Scenario: Trying to delete a ›has-price‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3" does NOT exist
      And there exists a "PRICE" "test price"
      When the user deletes the "has price" relationship between "BMW M3" and "test price"
      Then the request should be rejected with status code 404
