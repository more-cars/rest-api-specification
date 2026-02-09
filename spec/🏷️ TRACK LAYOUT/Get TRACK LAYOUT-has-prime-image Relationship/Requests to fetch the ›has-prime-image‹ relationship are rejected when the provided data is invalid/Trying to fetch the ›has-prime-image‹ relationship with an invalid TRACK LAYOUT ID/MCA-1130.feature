@REQ_MCA-1124
Feature: Get TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1129
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1130 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      When the user requests the "has prime image" relationship for "GP Circuit"
      Then the request should be rejected with status code 404
