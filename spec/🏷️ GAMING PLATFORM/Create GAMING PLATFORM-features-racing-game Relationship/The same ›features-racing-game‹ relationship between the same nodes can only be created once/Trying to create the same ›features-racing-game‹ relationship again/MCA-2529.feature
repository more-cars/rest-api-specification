@REQ_MCA-2521
Feature: Create GAMING PLATFORM-features-racing-game Relationship

  @RULE_MCA-2528
  Rule: The same ›features-racing-game‹ relationship between the same nodes can only be created once

    @TEST_MCA-2529 @implemented
    Scenario: Trying to create the same ›features-racing-game‹ relationship again
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "RACING GAME" "WRC 10"
      And there exists a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      When the user creates a "features racing game" relationship between "PlayStation 5" and "WRC 10"
      Then the response should return with status code 304
