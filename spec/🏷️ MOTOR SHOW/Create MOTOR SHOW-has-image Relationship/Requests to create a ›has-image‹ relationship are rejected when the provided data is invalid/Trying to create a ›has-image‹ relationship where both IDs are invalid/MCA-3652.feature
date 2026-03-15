@REQ_MCA-3646
Feature: Create MOTOR SHOW-has-image Relationship

  @RULE_MCA-3649
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3652 @implemented
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      And "IMAGE" "BMW Stand" does NOT exist
      When the user creates a "has image" relationship between "IAA Frankfurt" and "BMW Stand"
      Then the request should be rejected with status code 404
