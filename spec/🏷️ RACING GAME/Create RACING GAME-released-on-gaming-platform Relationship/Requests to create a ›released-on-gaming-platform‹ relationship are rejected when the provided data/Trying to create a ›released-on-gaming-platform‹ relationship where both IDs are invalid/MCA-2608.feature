@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2605
  Rule: Requests to create a ›released-on-gaming-platform‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2608 @implemented
    Scenario: Trying to create a ›released-on-gaming-platform‹ relationship where both IDs are invalid
      Given "RACING GAME" "Gran Turismo" does NOT exist
      And "GAMING PLATFORM" "PlayStation 5" does NOT exist
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      Then the request should be rejected with status code 404
