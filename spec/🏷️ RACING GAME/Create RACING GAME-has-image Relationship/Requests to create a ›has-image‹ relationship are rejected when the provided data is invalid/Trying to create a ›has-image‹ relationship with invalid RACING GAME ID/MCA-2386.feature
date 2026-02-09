@REQ_MCA-2382
Feature: Create RACING GAME-has-image Relationship

  @RULE_MCA-2385
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2386
    Scenario: Trying to create a ›has-image‹ relationship with invalid RACING GAME ID
      Given "RACING GAME" "F1 2025" does NOT exist
      And there exists a "IMAGE" "dvd cover"
      When the user creates a "has image" relationship between "F1 2025" and "dvd cover"
      Then the request should be rejected with status code 404
