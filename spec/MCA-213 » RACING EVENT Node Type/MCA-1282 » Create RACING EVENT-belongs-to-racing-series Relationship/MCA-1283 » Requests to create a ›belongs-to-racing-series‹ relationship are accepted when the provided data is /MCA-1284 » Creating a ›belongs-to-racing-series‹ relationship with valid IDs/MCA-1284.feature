@REQ_MCA-1282
Feature: Create RACING EVENT-belongs-to-racing-series Relationship

  @RULE_MCA-1283
  Rule: Requests to create a ›belongs-to-racing-series‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1284 @implemented
    Scenario: Creating a ›belongs-to-racing-series‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "Silverstone GP"
      And there exists a "RACING SERIES" "Formula 1"
      When the user creates a "belongs to racing series" relationship between "Silverstone GP" and "Formula 1"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
