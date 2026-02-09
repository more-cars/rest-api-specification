@REQ_MCA-1993
Feature: Get LAP TIME-achieved-on-track-layout Relationship

  @RULE_MCA-1998
  Rule: Requests to fetch the ›achieved-on-track-layout‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1999 @implemented
    Scenario: Trying to fetch the ›achieved-on-track-layout‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests the "achieved on track layout" relationship for "fastest lap"
      Then the request should be rejected with status code 404
