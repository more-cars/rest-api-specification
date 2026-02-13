@REQ_MCA-2539
Feature: Delete GAMING PLATFORM-features-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from GAMING PLATFORMS
  So I can clean up bad data or test data

  @RULE_MCA-2540
  Rule: The ›features-racing-game‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2541 @implemented
    Scenario: Deleting the ›features-racing-game‹ relationship when it actually exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "RACING GAME" "Forza Motorsport"
      And there exists a "features racing game" relationship "R" between "PlayStation 5" and "Forza Motorsport"
      When the user deletes the "features racing game" relationship between "PlayStation 5" and "Forza Motorsport"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
