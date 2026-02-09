@REQ_MCA-2382
Feature: Create RACING GAME-has-image Relationship

  @RULE_MCA-2385
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2388
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "RACING GAME" "F1 2025" does NOT exist
      And "IMAGE" "dvd cover" does NOT exist
      When the user creates a "has image" relationship between "F1 2025" and "dvd cover"
      Then the request should be rejected with status code 404
