@REQ_MCA-3684
Feature: Get MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3689
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3690 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user requests the "has prime image" relationship for "IAA Frankfurt"
      Then the request should be rejected with status code 404
