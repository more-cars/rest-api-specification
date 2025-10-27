@REQ_MCA-1032
Feature: Create RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1035
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1038 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And "IMAGE" "first-corner" does NOT exist
      When the user creates a "has prime image" relationship between "Hockenheimring" and "first-corner"
      Then the request should be rejected with status code 404
