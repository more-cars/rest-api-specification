@REQ_MCA-2521
Feature: Create GAMING PLATFORM-features-racing-game Relationship

  @RULE_MCA-2530
  Rule: Each GAMING PLATFORM can be in a ›features-racing-game‹ relationship with multiple RACING GAMES

    @TEST_MCA-2531 @implemented
    Scenario: Creating multiple ›features-racing-game‹ relationships
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "RACING GAME" "WRC 10"
      And there exists a "RACING GAME" "WRC 10 (Alternative)"
      When the user creates a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      And the user creates a "features racing game" relationship between "PlayStation 5" and "WRC 10 (Alternative)"
      Then there should exist a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      And there should exist a "features racing game" relationship between "PlayStation 5" and "WRC 10 (Alternative)"
