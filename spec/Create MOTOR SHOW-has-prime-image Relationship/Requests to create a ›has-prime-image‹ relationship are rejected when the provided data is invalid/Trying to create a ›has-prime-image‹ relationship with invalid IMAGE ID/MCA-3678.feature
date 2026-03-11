@REQ_MCA-3673
Feature: Create MOTOR SHOW-has-prime-image Relationship

  @RULE_MCA-3676
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3678
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And "IMAGE" "IAA logo" does NOT exist
      When the user creates a "has prime image" relationship between "IAA Frankfurt" and "IAA logo"
      Then the request should be rejected with status code 404
