@REQ_MCA-1184
Feature: Create RACING SERIES-has-racing-event Relationship

  @RULE_MCA-1185
  Rule: Requests to create a ›has-racing-event‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1186 @implemented
    Scenario: Creating a ›has-racing-event‹ relationship with valid IDs
      Given there exists a "RACING SERIES" "Formula 1"
      And there exists a "RACING EVENT" "GP Monaco"
      When the user creates a "has racing event" relationship between "Formula 1" and "GP Monaco"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
