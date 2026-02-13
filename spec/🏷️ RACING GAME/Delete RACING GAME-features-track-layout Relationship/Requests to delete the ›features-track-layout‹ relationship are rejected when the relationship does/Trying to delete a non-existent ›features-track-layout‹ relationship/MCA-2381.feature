@REQ_MCA-2373
Feature: Delete RACING GAME-features-track-layout Relationship
  As an API contributor
  I want to be able to disconnect TRACK LAYOUTS from RACING GAMES
  So I can clean up bad data or test data

  @RULE_MCA-2380
  Rule: Requests to delete the ›features-track-layout‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2381 @implemented
    Scenario: Trying to delete a non-existent ›features-track-layout‹ relationship
      Given there exists a "RACING GAME" "F1 2025"
      And there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists NO "features track layout" relationship between "F1 2025" and "Nordschleife"
      When the user deletes the "features track layout" relationship between "F1 2025" and "Nordschleife"
      Then the request should be rejected with status code 404
