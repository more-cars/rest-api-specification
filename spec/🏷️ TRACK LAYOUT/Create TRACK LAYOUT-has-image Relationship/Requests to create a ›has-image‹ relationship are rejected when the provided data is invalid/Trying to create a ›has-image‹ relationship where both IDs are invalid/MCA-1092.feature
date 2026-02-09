@REQ_MCA-1086
Feature: Create TRACK LAYOUT-has-image Relationship

  @RULE_MCA-1089
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1092 @implemented
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "TRACK LAYOUT" "GP Circuit" does NOT exist
      And "IMAGE" "circuit map" does NOT exist
      When the user creates a "has image" relationship between "GP Circuit" and "circuit map"
      Then the request should be rejected with status code 404
