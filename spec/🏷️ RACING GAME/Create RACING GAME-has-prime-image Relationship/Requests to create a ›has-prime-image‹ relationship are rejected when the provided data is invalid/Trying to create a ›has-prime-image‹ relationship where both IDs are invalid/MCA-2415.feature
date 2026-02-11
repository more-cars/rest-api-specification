@REQ_MCA-2409
Feature: Create RACING GAME-has-prime-image Relationship

  @RULE_MCA-2412
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2415 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RACING GAME" "F1 2025" does NOT exist
      And "IMAGE" "dvd cover" does NOT exist
      When the user creates a "has prime image" relationship between "F1 2025" and "dvd cover"
      Then the request should be rejected with status code 404
