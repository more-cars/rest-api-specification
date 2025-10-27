@REQ_MCA-1594
Feature: Create RACING SESSION-belongs-to-racing-event Relationship

  @RULE_MCA-1595
  Rule: Requests to create a ›belongs-to-racing-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1596
    Scenario: Creating a ›belongs-to-racing-event‹ relationship with valid IDs
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "RACING EVENT" "GP Monaco"
      When the user creates a "belongs to racing event" relationship between "Qualifying" and "GP Monaco"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
