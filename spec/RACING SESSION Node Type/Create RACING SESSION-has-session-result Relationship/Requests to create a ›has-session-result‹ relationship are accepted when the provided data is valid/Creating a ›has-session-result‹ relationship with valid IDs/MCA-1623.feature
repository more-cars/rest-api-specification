@REQ_MCA-1621
Feature: Create RACING SESSION-has-session-result Relationship

  @RULE_MCA-1622
  Rule: Requests to create a ›has-session-result‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1623
    Scenario: Creating a ›has-session-result‹ relationship with valid IDs
      Given there exists a "RACING SESSION" "Grand Prix"
      And there exists a "SESSION RESULT" "1st place"
      When the user creates a "has session result" relationship between "Grand Prix" and "1st place"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
