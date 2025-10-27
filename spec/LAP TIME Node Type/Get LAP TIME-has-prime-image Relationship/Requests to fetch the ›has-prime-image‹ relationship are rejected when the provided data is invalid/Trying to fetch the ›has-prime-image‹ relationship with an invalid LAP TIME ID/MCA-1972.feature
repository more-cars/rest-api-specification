@REQ_MCA-1966
Feature: Get LAP TIME-has-prime-image Relationship

  @RULE_MCA-1971
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1972
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests the "has prime image" relationship for "fastest lap"
      Then the request should be rejected with status code 404
