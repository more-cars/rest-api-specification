@REQ_MCA-1982
Feature: Create LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1985
  Rule: Requests to create a ›achieved-on-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1986 @implemented
    Scenario: Trying to create a ›achieved-on-track-layout‹ relationship with invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      And there exists a "TRACK LAYOUT" "Club Circuit"
      When the user creates a "achieved on track layout" relationship between "fastest lap" and "Club Circuit"
      Then the request should be rejected with status code 404
