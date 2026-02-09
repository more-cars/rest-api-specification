@REQ_MCA-1702
Feature: Create RACING EVENT-has-racing-session Relationship

  @RULE_MCA-1703
  Rule: Requests to create a ›has-racing-session‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1704 @implemented
    Scenario: Creating a ›has-racing-session‹ relationship with valid IDs
      Given there exists a "RACING EVENT" "GP Monaco"
      And there exists a "RACING SESSION" "Qualifying"
      When the user creates a "has racing session" relationship between "GP Monaco" and "Qualifying"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
