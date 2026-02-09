@REQ_MCA-1648
Feature: Create RACING SESSION-has-image Relationship

  @RULE_MCA-1651
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1653 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SESSION" "Grand Prix"
      And "IMAGE" "starting grid" does NOT exist
      When the user creates a "has image" relationship between "Grand Prix" and "starting grid"
      Then the request should be rejected with status code 404
