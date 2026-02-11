@REQ_MCA-2464
Feature: Create TRACK LAYOUT-is-featured-in-racing-game Relationship

  @RULE_MCA-2473
  Rule: Each TRACK LAYOUT can be in a ›is-featured-in-racing-game‹ relationship with multiple RACING GAMES

    @TEST_MCA-2474 @implemented
    Scenario: Creating multiple ›is-featured-in-racing-game‹ relationships
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "RACING GAME" "Assetto Corsa EVO (Alternative)"
      When the user creates a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      And the user creates a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO (Alternative)"
      Then there should exist a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      And there should exist a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO (Alternative)"
