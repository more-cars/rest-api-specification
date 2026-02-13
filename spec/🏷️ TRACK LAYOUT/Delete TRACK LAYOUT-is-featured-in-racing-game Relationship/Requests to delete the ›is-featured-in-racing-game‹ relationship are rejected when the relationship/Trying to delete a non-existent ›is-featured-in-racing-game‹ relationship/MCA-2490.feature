@REQ_MCA-2482
Feature: Delete TRACK LAYOUT-is-featured-in-racing-game Relationship
  As an API contributor
  I want to be able to disconnect RACING GAMES from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-2489
  Rule: Requests to delete the ›is-featured-in-racing-game‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2490 @implemented
    Scenario: Trying to delete a non-existent ›is-featured-in-racing-game‹ relationship
      Given there exists a "TRACK LAYOUT" "Südschleife"
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists NO "is featured in racing game" relationship between "Südschleife" and "Assetto Corsa EVO"
      When the user deletes the "is featured in racing game" relationship between "Südschleife" and "Assetto Corsa EVO"
      Then the request should be rejected with status code 404
