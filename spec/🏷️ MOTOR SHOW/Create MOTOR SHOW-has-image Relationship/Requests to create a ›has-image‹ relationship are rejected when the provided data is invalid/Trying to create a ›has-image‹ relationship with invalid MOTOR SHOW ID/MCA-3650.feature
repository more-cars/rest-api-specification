@REQ_MCA-3646
Feature: Create MOTOR SHOW-has-image Relationship

  @RULE_MCA-3649
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3650 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And there exists a "IMAGE" "BMW Stand"
      When the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      Then the request should be rejected with status code 404
