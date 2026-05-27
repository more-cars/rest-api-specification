@REQ_MCA-2521
Feature: Create GAMING PLATFORM-features-racing-game Relationship

  @RULE_MCA-2522
  Rule: Requests to create a ›features-racing-game‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2523 @implemented
    Scenario: Creating a ›features-racing-game‹ relationship with valid IDs
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "RACING GAME" "WRC 10"
      When the user creates a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      Then the request should be confirmed with status code 201
      And the response should return a relationship with "RACING GAME" "WRC 10"
