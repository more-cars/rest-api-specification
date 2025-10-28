@REQ_MCA-1982
Feature: Create LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1985
  Rule: Requests to create a ›achieved-on-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1987 @implemented
    Scenario: Trying to create a ›achieved-on-track-layout‹ relationship with invalid TRACK LAYOUT ID
      Given there exists a "LAP TIME" "fastest lap"
      And "TRACK LAYOUT" "Club Circuit" does NOT exist
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      Then the request should be rejected with status code 404
