@REQ_MCA-1336
Feature: Create RACING EVENT-follows-event Relationship

  @RULE_MCA-1337
  Rule: Requests to create a ›follows-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1338 @implemented
    Scenario: Creating a ›follows-event‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Austria"
      And there exists a "RACING EVENT" "GP Monaco"
      When the user creates a "follows event" relationship between "GP Austria" and "GP Monaco"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
