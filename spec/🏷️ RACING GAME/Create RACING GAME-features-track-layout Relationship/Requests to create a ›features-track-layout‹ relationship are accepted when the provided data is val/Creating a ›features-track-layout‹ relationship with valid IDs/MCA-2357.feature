@REQ_MCA-2355
Feature: Create RACING GAME-features-track-layout Relationship

  @RULE_MCA-2356
  Rule: Requests to create a ›features-track-layout‹ relationship are accepted when the provided data is valid

    @TEST_MCA-2357
    Scenario: Creating a ›features-track-layout‹ relationship with valid IDs
      Given there exists a "RACING GAME" "Assetto Corsa EVO"
      And there exists a "TRACK LAYOUT" "Nordschleife"
      When the user creates a "features track layout" relationship between "Assetto Corsa EVO" and "Nordschleife"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
