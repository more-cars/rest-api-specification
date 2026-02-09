@REQ_MCA-2428
Feature: Delete RACING GAME-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2431
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2434
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RACING GAME" "F1 2025" does NOT exist
      And "IMAGE" "Audi Quattro" does NOT exist
      When the user deletes the "has prime image" relationship between "F1 2025" and "Audi Quattro"
      Then the request should be rejected with status code 404
