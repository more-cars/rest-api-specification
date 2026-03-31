@REQ_MCA-4662
Feature: Delete RACING GAME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a RACING GAME
  So I can clean up bad data or test data

  @RULE_MCA-4665
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4666
    Scenario: Trying to delete a ›has-main-video‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-main-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
