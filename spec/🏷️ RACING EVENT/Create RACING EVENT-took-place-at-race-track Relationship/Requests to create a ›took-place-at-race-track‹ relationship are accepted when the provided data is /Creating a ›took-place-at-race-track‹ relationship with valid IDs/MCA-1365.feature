@REQ_MCA-1363
Feature: Create RACING EVENT-took-place-at-race-track Relationship

  @RULE_MCA-1364
  Rule: Requests to create a ›took-place-at-race-track‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1365 @implemented
    Scenario: Creating a ›took-place-at-race-track‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACE TRACK" "Red Bull Ring"
      When the user creates a "took place at race track" relationship between "GP Austria" and "Red Bull Ring"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
