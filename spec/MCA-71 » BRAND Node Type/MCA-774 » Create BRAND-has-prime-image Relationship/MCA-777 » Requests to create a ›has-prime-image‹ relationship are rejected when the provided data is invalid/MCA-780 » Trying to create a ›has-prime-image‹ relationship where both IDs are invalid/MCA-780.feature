@REQ_MCA-774
Feature: Create BRAND-has-prime-image Relationship

  @RULE_MCA-777
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-780
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "BRAND" "Bugatti" does NOT exist
      And "IMAGE" "logo" does NOT exist
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then the request should be rejected with status code 404
