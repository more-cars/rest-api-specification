@REQ_MCA-2437
Feature: Create CAR MODEL VARIANT-is-featured-in-racing-game Relationship

  @RULE_MCA-2438
  Rule: Requests to create a ›is-featured-in-racing-game‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2439 @implemented
    Scenario: Creating a ›is-featured-in-racing-game‹ relationship with valid IDs
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exists a "RACING GAME" "Gran Turismo"
      When the user creates a "is featured in racing game" relationship between "Aston Martin DB7" and "Gran Turismo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
