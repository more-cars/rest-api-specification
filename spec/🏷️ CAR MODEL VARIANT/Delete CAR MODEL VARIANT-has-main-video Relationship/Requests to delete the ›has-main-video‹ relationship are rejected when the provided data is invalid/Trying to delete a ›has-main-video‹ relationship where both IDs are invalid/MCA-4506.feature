@REQ_MCA-4500
Feature: Delete CAR MODEL VARIANT-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a CAR MODEL VARIANT
  So I can clean up bad data or test data

  @RULE_MCA-4503
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4506
    Scenario: Trying to delete a ›has-main-video‹ relationship where both IDs are invalid
      Given "CAR MODEL VARIANT" "BMW M3 CSL" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be rejected with status code 404
