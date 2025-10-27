@REQ_MCA-1763
Feature: Create SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1764
  Rule: Requests to create a ›belongs-to-racing-session‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1765
    Scenario: Creating a ›belongs-to-racing-session‹ relationship with valid IDs
      Given there exists a "SESSION RESULT" "1st place"
      And there exists a "RACING SESSION" "Grand Prix"
      When the user creates a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
