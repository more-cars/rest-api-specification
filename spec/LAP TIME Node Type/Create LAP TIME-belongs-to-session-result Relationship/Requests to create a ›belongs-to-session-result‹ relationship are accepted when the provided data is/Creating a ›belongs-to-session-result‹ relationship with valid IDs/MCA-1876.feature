@REQ_MCA-1874
Feature: Create LAP TIME-belongs-to-session-result Relationship

  @RULE_MCA-1875
  Rule: Requests to create a ›belongs-to-session-result‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1876
    Scenario: Creating a ›belongs-to-session-result‹ relationship with valid IDs
      Given there exists a "LAP TIME" "fastest lap"
      And there exists a "SESSION RESULT" "Grand Prix"
      When the user creates a "belongs to session result" relationship between "fastest lap" and "Grand Prix"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
