@REQ_MCA-1621
Feature: Create RACING SESSION-has-session-result Relationship

  @RULE_MCA-1624
  Rule: Requests to create a ›has-session-result‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1625 @implemented
    Scenario: Trying to create a ›has-session-result‹ relationship with invalid RACING SESSION ID
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And there exists a "SESSION RESULT" "1st place"
      When the user creates a "has session result" relationship between "Grand Prix" and "1st place"
      Then the request should be rejected with status code 404
