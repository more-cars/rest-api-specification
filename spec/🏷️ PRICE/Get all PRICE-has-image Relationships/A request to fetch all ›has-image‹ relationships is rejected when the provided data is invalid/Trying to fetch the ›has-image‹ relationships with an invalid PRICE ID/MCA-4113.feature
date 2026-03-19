@REQ_MCA-4107
Feature: Get all PRICE-has-image Relationships

  @RULE_MCA-4112
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4113
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid PRICE ID
      Given "PRICE" "Brand New" does NOT exist
      When the user requests all "has image" relationships for "Brand New"
      Then the request should be rejected with status code 404
