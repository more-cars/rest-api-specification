@REQ_MCA-2482
Feature: Delete TRACK LAYOUT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2485
  Rule: Requests to delete the ›is-featured-in-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2486 @implemented
    Scenario: Trying to delete a ›is-featured-in-racing-game‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Südschleife" does NOT exist
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      When the user deletes the "is featured in racing game" relationship between "Südschleife" and "Assetto Corsa EVO"
      Then the request should be rejected with status code 404
