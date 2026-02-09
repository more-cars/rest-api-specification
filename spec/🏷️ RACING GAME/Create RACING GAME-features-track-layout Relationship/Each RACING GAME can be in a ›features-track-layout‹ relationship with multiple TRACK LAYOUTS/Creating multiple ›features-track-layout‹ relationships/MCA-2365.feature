@REQ_MCA-2355
Feature: Create RACING GAME-features-track-layout Relationship

  @RULE_MCA-2364
  Rule: Each RACING GAME can be in a ›features-track-layout‹ relationship with multiple TRACK LAYOUTS

    @TEST_MCA-2365
    Scenario: Creating multiple ›features-track-layout‹ relationships
      Given there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "TRACK LAYOUT" "Nordschleife (Alternative)"
      When the user creates a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      And the user creates a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife (Alternative)"
      Then there should exist a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      And there should exist a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife (Alternative)"
