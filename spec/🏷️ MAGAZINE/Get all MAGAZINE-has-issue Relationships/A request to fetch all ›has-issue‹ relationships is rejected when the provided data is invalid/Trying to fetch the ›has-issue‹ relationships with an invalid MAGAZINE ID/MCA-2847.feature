@REQ_MCA-2841
Feature: Get all MAGAZINE-has-issue Relationships

  @RULE_MCA-2846
  Rule: A request to fetch all ›has-issue‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-2847 @implemented
    Scenario: Trying to fetch the ›has-issue‹ relationships with an invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      When the user requests all "has issue" relationships for "Top Gear"
      Then the request should be rejected with status code 404
