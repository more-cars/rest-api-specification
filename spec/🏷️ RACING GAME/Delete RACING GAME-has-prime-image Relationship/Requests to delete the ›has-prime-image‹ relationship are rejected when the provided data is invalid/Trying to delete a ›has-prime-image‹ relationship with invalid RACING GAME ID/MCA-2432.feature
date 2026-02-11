@REQ_MCA-2428
Feature: Delete RACING GAME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2431
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2432 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      And there exists a "IMAGE" "Audi Quattro"
      When the user deletes the "has prime image" relationship between "F1 2025" and "Audi Quattro"
      Then the request should be rejected with status code 404
