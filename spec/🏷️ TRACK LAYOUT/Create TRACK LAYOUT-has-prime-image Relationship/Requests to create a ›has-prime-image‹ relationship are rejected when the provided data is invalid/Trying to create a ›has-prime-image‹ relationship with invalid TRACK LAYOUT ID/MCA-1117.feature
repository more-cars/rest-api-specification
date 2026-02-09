@REQ_MCA-1113
Feature: Create TRACK LAYOUT-has-prime-image Relationship

  @RULE_MCA-1116
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1117 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      And there exists a "IMAGE" "latest circuit map"
      When the user creates a "has prime image" relationship between "GP Circuit" and "latest circuit map"
      Then the request should be rejected with status code 404
