@REQ_MCA-2087
Feature: Delete CAR MODEL VARIANT-is-variant-of Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2090
  Rule: Requests to delete the ›is-variant-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2092 @implemented
    Scenario: Trying to delete a ›is-variant-of‹ relationship with invalid CAR MODEL ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3"
      And "CAR MODEL" "Corolla" does NOT exist
      When the user deletes the "is variant of" relationship between "BMW M3" and "Corolla"
      Then the request should be rejected with status code 404
