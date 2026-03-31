@REQ_MCA-4662
Feature: Delete RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING GAME
  So I can clean up bad data or test data

  @RULE_MCA-4665
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4668
    Scenario: Trying to delete a ›has-main-video‹ relationship where both IDs are invalid
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
