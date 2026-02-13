@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2605
  Rule: Requests to create a ›released-on-gaming-platform‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2606 @implemented
    Scenario: Trying to create a ›released-on-gaming-platform‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "Gran Turismo" does NOT exist
      And there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      Then the request should be rejected with status code 404
