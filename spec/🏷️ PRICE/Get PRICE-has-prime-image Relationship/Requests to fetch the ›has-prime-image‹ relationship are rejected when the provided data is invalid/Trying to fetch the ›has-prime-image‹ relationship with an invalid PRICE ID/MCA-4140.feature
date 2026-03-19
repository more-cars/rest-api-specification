@REQ_MCA-4134
Feature: Get PRICE-has-prime-image Relationship

  @RULE_MCA-4139
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4140
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      When the user requests the "has prime image" relationship for "Brand New"
      Then the request should be rejected with status code 404
