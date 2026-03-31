@REQ_MCA-4446
Feature: Delete CAR MODEL-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a CAR MODEL
  So I can clean up bad data or test data

  @RULE_MCA-4449
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4450
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid CAR MODEL ID
      Given "CAR MODEL" "Testarossa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Testarossa" and "Promo Video"
      Then the request should be rejected with status code 404
