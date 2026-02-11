@REQ_MCA-2373
Feature: Delete RACING GAME-features-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2376
  Rule: Requests to delete the ›features-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2377 @implemented
    Scenario: Trying to delete a ›features-track-layout‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      And there exists a "TRACK LAYOUT" "Nordschleife"
      When the user deletes the "features track layout" relationship between "F1 2025" and "Nordschleife"
      Then the request should be rejected with status code 404
