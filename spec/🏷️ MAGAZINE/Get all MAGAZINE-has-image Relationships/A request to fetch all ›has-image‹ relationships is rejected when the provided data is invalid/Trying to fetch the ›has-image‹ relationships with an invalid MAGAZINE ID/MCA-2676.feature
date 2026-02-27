@REQ_MCA-2670
Feature: Get all MAGAZINE-has-image Relationships

  @RULE_MCA-2675
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2676
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      When the user requests all "has image" relationships for "Top Gear"
      Then the request should be rejected with status code 404
