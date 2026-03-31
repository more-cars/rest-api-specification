@REQ_MCA-4994
Feature: Delete MODEL CAR-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR
  So I can clean up bad data or test data

  @RULE_MCA-4997
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5000
    Scenario: Trying to delete a ›has-main-video‹ relationship where both IDs are invalid
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Hot Wheels F40" and "Promo Video"
      Then the request should be rejected with status code 404
