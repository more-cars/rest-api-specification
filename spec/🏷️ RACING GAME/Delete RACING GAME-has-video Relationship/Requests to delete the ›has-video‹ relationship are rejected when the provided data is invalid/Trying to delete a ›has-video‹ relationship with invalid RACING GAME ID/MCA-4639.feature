@REQ_MCA-4635
Feature: Delete RACING GAME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-4638
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4639 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Assetto Corsa" does NOT exist
      And there exists a "VIDEO" "Promo Video"
      When the user deletes the "has-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
