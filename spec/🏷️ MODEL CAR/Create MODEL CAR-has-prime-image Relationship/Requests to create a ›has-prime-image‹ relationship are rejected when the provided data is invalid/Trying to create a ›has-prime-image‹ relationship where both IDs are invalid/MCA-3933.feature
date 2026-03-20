@REQ_MCA-3927
Feature: Create MODEL CAR-has-prime-image Relationship

  @RULE_MCA-3930
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3933 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "MODEL CAR" "F40 Scale Model" does NOT exist
      And "IMAGE" "F40 Matchbox photo" does NOT exist
      When the user creates a "has prime image" relationship between "F40 Scale Model" and "F40 Matchbox photo"
      Then the request should be rejected with status code 404
