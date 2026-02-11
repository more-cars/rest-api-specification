@REQ_MCA-2482
Feature: Delete TRACK LAYOUT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2483
  Rule: The ›is-featured-in-racing-game‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2484 @implemented
    Scenario: Deleting the ›is-featured-in-racing-game‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Südschleife"
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "is featured in racing game" relationship "R" between "Südschleife" and "Assetto Corsa EVO"
      When the user deletes the "is featured in racing game" relationship between "Südschleife" and "Assetto Corsa EVO"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
