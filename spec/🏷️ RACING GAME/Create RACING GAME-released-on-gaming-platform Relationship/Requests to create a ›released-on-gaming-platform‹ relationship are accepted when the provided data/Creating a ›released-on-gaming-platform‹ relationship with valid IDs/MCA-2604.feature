@REQ_MCA-2602
Feature: Create RACING GAME-released-on-gaming-platform Relationship

  @RULE_MCA-2603
  Rule: Requests to create a ›released-on-gaming-platform‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2604 @implemented
    Scenario: Creating a ›released-on-gaming-platform‹ relationship with valid IDs
      Given there exists a "RACING GAME" "Gran Turismo"
      And there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user creates a "released on gaming platform" relationship between "Gran Turismo" and "PlayStation 5"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
