@REQ_MCA-3366
Feature: Create PROGRAMME-has-prime-image Relationship

  @RULE_MCA-3369
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3372
    Scenario: Trying to create a ›has-prime-image‹ relationship where both IDs are invalid
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And "IMAGE" "TGT logo" does NOT exist
      When the user creates a "has prime image" relationship between "The Grand Tour" and "TGT logo"
      Then the request should be rejected with status code 404
