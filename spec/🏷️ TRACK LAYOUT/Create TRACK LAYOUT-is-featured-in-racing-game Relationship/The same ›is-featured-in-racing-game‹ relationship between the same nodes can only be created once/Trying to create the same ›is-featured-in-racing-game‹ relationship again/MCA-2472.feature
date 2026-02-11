@REQ_MCA-2464
Feature: Create TRACK LAYOUT-is-featured-in-racing-game Relationship

  @RULE_MCA-2471
  Rule: The same ›is-featured-in-racing-game‹ relationship between the same nodes can only be created once

    @TEST_MCA-2472 @implemented
    Scenario: Trying to create the same ›is-featured-in-racing-game‹ relationship again
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      When the user creates a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      Then the response should return with status code 304
