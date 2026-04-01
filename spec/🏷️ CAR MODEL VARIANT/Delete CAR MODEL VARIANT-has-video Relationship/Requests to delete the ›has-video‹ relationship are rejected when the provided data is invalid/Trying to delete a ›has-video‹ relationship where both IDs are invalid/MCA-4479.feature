@REQ_MCA-4473
Feature: Delete CAR MODEL VARIANT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-4476
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4479 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be rejected with status code 404
