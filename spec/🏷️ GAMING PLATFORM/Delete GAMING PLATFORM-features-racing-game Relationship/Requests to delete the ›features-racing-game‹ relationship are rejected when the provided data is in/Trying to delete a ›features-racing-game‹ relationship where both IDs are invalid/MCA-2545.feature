@REQ_MCA-2539
Feature: Delete GAMING PLATFORM-features-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2542
  Rule: Requests to delete the ›features-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2545 @implemented
    Scenario: Trying to delete a ›features-racing-game‹ relationship where both IDs are invalid
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      And "RACING GAME" "Forza Motorsport" does NOT exist
      When the user deletes the "features racing game" relationship between "PlayStation 5" and "Forza Motorsport"
      Then the request should be rejected with status code 404
