@REQ_MCA-4199
Feature: Delete CAR MODEL VARIANT-has-scale-model Relationship
  As an API contributor
  I want to be able to disconnect MODEL CARS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4202
  Rule: Requests to delete the ›has-scale-model‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4204 @implemented
    Scenario: Trying to delete a ›has-scale-model‹ relationship with invalid MODEL CAR ID
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And "MODEL CAR" "Ferrari F40" does NOT exist
      When the user deletes the "has scale model" relationship between "BMW M3 CSL" and "Ferrari F40"
      Then the request should be rejected with status code 404
