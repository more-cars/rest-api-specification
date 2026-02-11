@REQ_MCA-2420
Feature: Get RACING GAME-has-prime-image Relationship

  @RULE_MCA-2425
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2426 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      When the user requests the "has prime image" relationship for "F1 2025"
      Then the request should be rejected with status code 404
