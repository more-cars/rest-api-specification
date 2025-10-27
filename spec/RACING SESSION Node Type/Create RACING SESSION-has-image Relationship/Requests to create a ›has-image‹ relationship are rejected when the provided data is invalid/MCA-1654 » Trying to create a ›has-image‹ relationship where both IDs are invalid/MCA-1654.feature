@REQ_MCA-1648
Feature: Create RACING SESSION-has-image Relationship

  @RULE_MCA-1651
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1654
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And "IMAGE" "starting grid" does NOT exist
      When the user creates a "has image" relationship between "Grand Prix" and "starting grid"
      Then the request should be rejected with status code 404
