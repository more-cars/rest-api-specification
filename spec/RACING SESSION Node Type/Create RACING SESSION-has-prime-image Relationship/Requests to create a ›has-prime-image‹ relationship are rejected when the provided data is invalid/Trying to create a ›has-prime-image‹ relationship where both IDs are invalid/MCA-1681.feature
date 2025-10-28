@REQ_MCA-1675
Feature: Create RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1678
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1681 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And "IMAGE" "starting grid" does NOT exist
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid"
      Then the request should be rejected with status code 404
