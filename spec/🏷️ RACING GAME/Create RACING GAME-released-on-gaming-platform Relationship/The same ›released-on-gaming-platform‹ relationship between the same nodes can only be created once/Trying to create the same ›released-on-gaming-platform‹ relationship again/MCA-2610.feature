@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2609
  Rule: The same ›released-on-gaming-platform‹ relationship between the same nodes can only be created once

    @TEST_MCA-2610 @implemented
    Scenario: Trying to create the same ›released-on-gaming-platform‹ relationship again
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exists a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      Then the response should return with status code 304
