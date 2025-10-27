@REQ_MCA-1309
Feature: Create RACING EVENT-is-followed-by-event Relationship

  @RULE_MCA-1310
  Rule: Requests to create a ›is-followed-by-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1311 @implemented
    Scenario: Creating a ›is-followed-by-event‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING EVENT" "GP Austria"
      When the user creates a "is followed by event" relationship between "GP Monaco" and "GP Austria"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
