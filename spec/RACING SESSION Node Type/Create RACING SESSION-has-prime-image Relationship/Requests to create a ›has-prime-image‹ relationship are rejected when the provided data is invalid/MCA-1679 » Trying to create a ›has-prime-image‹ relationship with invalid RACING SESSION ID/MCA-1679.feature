@REQ_MCA-1675
Feature: Create RACING SESSION-has-prime-image Relationship

  @RULE_MCA-1678
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1679
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid RACING SESSION ID
      Given "RACING SESSION" "Grand Prix" does NOT exist
      And there exists a "IMAGE" "starting grid"
      When the user creates a "has prime image" relationship between "Grand Prix" and "starting grid"
      Then the request should be rejected with status code 404
