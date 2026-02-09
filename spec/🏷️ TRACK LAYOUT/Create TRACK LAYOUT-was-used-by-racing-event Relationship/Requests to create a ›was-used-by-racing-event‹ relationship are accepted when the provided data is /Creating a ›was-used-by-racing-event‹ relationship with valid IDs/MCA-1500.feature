@REQ_MCA-1498
Feature: Create TRACK LAYOUT-was-used-by-racing-event Relationship

  @RULE_MCA-1499
  Rule: Requests to create a ›was-used-by-racing-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1500 @implemented
    Scenario: Creating a ›was-used-by-racing-event‹ relationship with valid IDs
      Given there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      And there exists a "RACING EVENT" "GP Silverstone"
      When the user creates a "was used by racing event" relationship between "Grand Prix Circuit" and "GP Silverstone"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
