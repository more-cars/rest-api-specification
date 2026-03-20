@REQ_MCA-4199
Feature: Delete CAR MODEL VARIANT-has-scale-model Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4202
  Rule: Requests to delete the ›has-scale-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4203 @implemented
    Scenario: Trying to delete a ›has-scale-model‹ relationship with invalid CAR MODEL VARIANT ID
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And there exists a "MODEL CAR" "Ferrari F40"
      When the user deletes the "has scale model" relationship between "BMW M3 CSL" and "Ferrari F40"
      Then the request should be rejected with status code 404
