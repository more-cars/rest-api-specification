@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2605
  Rule: Requests to create a ›released-on-gaming-platform‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2607 @implemented
    Scenario: Trying to create a ›released-on-gaming-platform‹ relationship with invalid GAMING PLATFORM ID
      Given there exists a "RACING GAME" "Gran Turismo"
      And "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      Then the request should be rejected with status code 404
