@REQ_MCA-3030
Feature: Get all RACING EVENT-covered-by-magazine-issue Relationships

  @RULE_MCA-3035
  Rule: A request to fetch all ›covered-by-magazine-issue‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3036 @implemented
    Scenario: Trying to fetch the ›covered-by-magazine-issue‹ relationships with an invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Australia" does NOT exist
      When the user requests all "covered by magazine issue" relationships for "F1 GP Australia"
      Then the request should be rejected with status code 404
