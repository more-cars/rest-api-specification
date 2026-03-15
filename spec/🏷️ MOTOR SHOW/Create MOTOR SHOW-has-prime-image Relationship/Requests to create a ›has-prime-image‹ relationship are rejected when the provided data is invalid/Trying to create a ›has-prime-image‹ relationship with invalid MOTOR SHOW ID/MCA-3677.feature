@REQ_MCA-3673
Feature: Create MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3676
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3677 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And there exists a "IMAGE" "IAA logo"
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      Then the request should be rejected with status code 404
