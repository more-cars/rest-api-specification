@REQ_MCA-2521
Feature: Create GAMING PLATFORM-features-racing-game Relationship

  @RULE_MCA-2524
  Rule: Requests to create a ›features-racing-game‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2526 @implemented
    Scenario: Trying to create a ›features-racing-game‹ relationship with invalid RACING GAME ID
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And "RACING GAME" "WRC 10" does NOT exist
      When the user creates a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      Then the request should be rejected with status code 404
