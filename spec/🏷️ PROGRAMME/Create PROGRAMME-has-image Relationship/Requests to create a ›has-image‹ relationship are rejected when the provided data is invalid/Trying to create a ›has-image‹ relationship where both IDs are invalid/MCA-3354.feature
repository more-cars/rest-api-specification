@REQ_MCA-3348
Feature: Create PROGRAMME-has-image Relationship

  @RULE_MCA-3351
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3354 @implemented
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And "IMAGE" "TGT logo" does NOT exist
      When the user creates a "has image" relationship between "The Grand Tour" and "TGT logo"
      Then the request should be rejected with status code 404
