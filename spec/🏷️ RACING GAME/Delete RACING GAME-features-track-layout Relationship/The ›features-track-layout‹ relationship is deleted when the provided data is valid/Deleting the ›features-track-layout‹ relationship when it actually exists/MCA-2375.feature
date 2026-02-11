@REQ_MCA-2373
Feature: Delete RACING GAME-features-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2374
  Rule: The ›features-track-layout‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2375 @implemented
    Scenario: Deleting the ›features-track-layout‹ relationship when it actually exists
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "features track layout" relationship "R" between "F1 2025" and "Nordschleife"
      When the user deletes the "features track layout" relationship between "F1 2025" and "Nordschleife"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
