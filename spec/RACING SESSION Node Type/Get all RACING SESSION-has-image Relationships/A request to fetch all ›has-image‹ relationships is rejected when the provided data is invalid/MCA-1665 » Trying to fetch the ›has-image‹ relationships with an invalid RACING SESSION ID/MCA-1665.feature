@REQ_MCA-1659
Feature: Get all RACING SESSION-has-image Relationships

  @RULE_MCA-1664
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1665
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RACING SESSION ID
      Given "RACING SESSION" "Grand Prix" does NOT exist
      When the user requests all "has image" relationships for "Grand Prix"
      Then the request should be rejected with status code 404
