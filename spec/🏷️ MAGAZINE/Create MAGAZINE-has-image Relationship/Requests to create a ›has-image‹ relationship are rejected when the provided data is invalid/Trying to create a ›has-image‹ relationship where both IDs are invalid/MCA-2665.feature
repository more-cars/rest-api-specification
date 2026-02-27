@REQ_MCA-2659
Feature: Create MAGAZINE-has-image Relationship

  @RULE_MCA-2662
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2665
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "MAGAZINE" "Top Gear" does NOT exist
      And "IMAGE" "cover" does NOT exist
      When the user creates a "has image" relationship between "Top Gear" and "cover"
      Then the request should be rejected with status code 404
