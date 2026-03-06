@REQ_MCA-3114
Feature: Get RATING-by-magazine-issue Relationship

  @RULE_MCA-3119
  Rule: Requests to fetch the ›by-magazine-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3120 @implemented
    Scenario: Trying to fetch the ›by-magazine-issue‹ relationship with an invalid RATING ID
      Given "RATING" "93 Percent" does NOT exist
      When the user requests the "by magazine issue" relationship for "93 Percent"
      Then the request should be rejected with status code 404
