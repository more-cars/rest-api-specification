@REQ_MCA-2659
Feature: Create MAGAZINE-has-image Relationship

  @RULE_MCA-2662
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2663
    Scenario: Trying to create a ›has-image‹ relationship with invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      And there exists a "IMAGE" "cover"
      When the user creates a "has image" relationship between "Top Gear" and "cover"
      Then the request should be rejected with status code 404
