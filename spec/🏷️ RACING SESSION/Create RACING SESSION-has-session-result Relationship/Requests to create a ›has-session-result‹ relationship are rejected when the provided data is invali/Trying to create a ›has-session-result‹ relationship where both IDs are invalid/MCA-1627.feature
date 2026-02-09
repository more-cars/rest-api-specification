@REQ_MCA-1621
Feature: Create RACING SESSION-has-session-result Relationship

  @RULE_MCA-1624
  Rule: Requests to create a ›has-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1627 @implemented
    Scenario: Trying to create a ›has-session-result‹ relationship where both IDs are invalid
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And "SESSION RESULT" "1st place" does NOT exist
      When the user creates a "has session result" relationship between "Grand Prix" and "1st place"
      Then the request should be rejected with status code 404
