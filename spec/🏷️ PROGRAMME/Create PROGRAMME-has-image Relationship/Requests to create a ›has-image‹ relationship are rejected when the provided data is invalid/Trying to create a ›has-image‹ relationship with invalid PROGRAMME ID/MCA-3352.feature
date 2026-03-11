@REQ_MCA-3348
Feature: Create PROGRAMME-has-image Relationship

  @RULE_MCA-3351
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3352
    Scenario: Trying to create a ›has-image‹ relationship with invalid PROGRAMME ID
      Given "PROGRAMME" "The Grand Tour" does NOT exist
      And there exists a "IMAGE" "TGT logo"
      When the user creates a "has image" relationship between "The Grand Tour" and "TGT logo"
      Then the request should be rejected with status code 404
