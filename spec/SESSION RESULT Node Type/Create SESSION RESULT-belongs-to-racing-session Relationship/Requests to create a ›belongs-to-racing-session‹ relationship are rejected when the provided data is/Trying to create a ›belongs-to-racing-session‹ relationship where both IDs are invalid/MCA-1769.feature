@REQ_MCA-1763
Feature: Create SESSION RESULT-belongs-to-racing-session Relationship

  @RULE_MCA-1766
  Rule: Requests to create a ›belongs-to-racing-session‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1769 @implemented
    Scenario: Trying to create a ›belongs-to-racing-session‹ relationship where both IDs are invalid
      Given "SESSION RESULT" "1st place" does NOT exist
      And "RACING SESSION" "Grand Prix" does NOT exist
      When the user creates a "belongs to racing session" relationship between "1st place" and "Grand Prix"
      Then the request should be rejected with status code 404
