@REQ_MCA-2464
Feature: Create TRACK LAYOUT-is-featured-in-racing-game Relationship

  @RULE_MCA-2465
  Rule: Requests to create a ›is-featured-in-racing-game‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2466 @implemented
    Scenario: Creating a ›is-featured-in-racing-game‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "RACING GAME" "Assetto Corsa EVO"
      When the user creates a "is featured in racing game" relationship between "Nordschleife" and "Assetto Corsa EVO"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
