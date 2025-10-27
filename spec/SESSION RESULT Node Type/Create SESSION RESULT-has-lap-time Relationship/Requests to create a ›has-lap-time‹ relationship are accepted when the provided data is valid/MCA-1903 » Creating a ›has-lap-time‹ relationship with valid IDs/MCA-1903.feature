@REQ_MCA-1901
Feature: Create SESSION RESULT-has-lap-time Relationship

  @RULE_MCA-1902
  Rule: Requests to create a ›has-lap-time‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1903
    Scenario: Creating a ›has-lap-time‹ relationship with valid IDs
      Given there exists a "SESSION RESULT" "Grand Prix"
      And there exists a "LAP TIME" "fastest lap"
      When the user creates a "has lap time" relationship between "Grand Prix" and "fastest lap"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
