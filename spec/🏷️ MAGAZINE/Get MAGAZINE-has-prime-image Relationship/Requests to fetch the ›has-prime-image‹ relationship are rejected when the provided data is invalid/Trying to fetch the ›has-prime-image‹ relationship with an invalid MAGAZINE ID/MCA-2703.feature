@REQ_MCA-2697
Feature: Get MAGAZINE-has-prime-image Relationship

  @RULE_MCA-2702
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2703
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      When the user requests the "has prime image" relationship for "Top Gear"
      Then the request should be rejected with status code 404
