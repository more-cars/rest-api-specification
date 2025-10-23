@REQ_MCA-1471
Feature: Create RACE TRACK-hosted-racing-event Relationship

  @RULE_MCA-1472
  Rule: Requests to create a ›hosted-racing-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1473 @implemented
    Scenario: Creating a ›hosted-racing-event‹ relationship with valid IDs
      Given there exists a "RACE TRACK" "Red Bull Ring"
      And there exists a "RACING EVENT" "GP Austria"
      When the user creates a "hosted racing event" relationship between "Red Bull Ring" and "GP Austria"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
