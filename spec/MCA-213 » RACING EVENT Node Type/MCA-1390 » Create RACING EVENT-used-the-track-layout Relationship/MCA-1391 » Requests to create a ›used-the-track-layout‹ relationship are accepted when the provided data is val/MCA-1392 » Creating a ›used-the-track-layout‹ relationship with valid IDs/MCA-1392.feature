@REQ_MCA-1390
Feature: Create RACING EVENT-used-the-track-layout Relationship

  @RULE_MCA-1391
  Rule: Requests to create a ›used-the-track-layout‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1392 @implemented
    Scenario: Creating a ›used-the-track-layout‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "TRACK LAYOUT" "Grand Prix Circuit"
      When the user creates a "used the track layout" relationship between "GP Austria" and "Grand Prix Circuit"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
