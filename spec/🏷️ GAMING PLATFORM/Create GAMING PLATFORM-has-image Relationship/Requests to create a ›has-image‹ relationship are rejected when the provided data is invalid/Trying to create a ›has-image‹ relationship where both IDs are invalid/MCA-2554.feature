@REQ_MCA-2548
Feature: Create GAMING PLATFORM-has-image Relationship

  @RULE_MCA-2551
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2554 @implemented
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "GAMING PLATFORM" "PlayStation 5" does NOT exist
      And "IMAGE" "PS5 logo" does NOT exist
      When the user creates a "has image" relationship between "PlayStation 5" and "PS5 logo"
      Then the request should be rejected with status code 404
