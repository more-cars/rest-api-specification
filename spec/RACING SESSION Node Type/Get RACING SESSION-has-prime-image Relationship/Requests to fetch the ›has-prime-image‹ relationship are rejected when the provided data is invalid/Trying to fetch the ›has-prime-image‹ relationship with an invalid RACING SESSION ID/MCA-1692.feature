@REQ_MCA-1686
Feature: Get RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1691
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1692 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RACING SESSION ID
      Given "RACING SESSION" "Grand Prix" does NOT exist
      When the user requests the "has prime image" relationship for "Grand Prix"
      Then the request should be rejected with status code 404
