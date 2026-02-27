@REQ_MCA-2686
Feature: Create MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2689
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2690
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      And there exists a "IMAGE" "cover"
      When the user creates a "has prime image" relationship between "Top Gear" and "cover"
      Then the request should be rejected with status code 404
