@REQ_MCA-1702
Feature: Create RACING EVENT-has-racing-session Relationship

  @RULE_MCA-1705
  Rule: Requests to create a ›has-racing-session‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1708
    Scenario: Trying to create a ›has-racing-session‹ relationship where both IDs are invalid
      Given "RACING EVENT" "GP Monaco" does NOT exist
      And "RACING SESSION" "Qualifying" does NOT exist
      When the user creates a "has racing session" relationship between "GP Monaco" and "Qualifying"
      Then the request should be rejected with status code 404
