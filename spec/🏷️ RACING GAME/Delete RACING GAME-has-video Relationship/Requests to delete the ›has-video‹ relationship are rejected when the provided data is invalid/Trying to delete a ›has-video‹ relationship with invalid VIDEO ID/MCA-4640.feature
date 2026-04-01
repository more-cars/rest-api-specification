@REQ_MCA-4635
Feature: Delete RACING GAME-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-4638
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4640 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "RACING GAME" "Assetto Corsa"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Assetto Corsa" and "Promo Video"
      Then the request should be rejected with status code 404
