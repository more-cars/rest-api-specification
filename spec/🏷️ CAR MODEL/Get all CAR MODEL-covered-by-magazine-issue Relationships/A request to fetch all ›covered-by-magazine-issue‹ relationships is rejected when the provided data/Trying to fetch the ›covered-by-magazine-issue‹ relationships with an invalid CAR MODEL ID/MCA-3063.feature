@REQ_MCA-3057
Feature: Get all CAR MODEL-covered-by-magazine-issue Relationships

  @RULE_MCA-3062
  Rule: A request to fetch all ›covered-by-magazine-issue‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3063 @implemented
    Scenario: Trying to fetch the ›covered-by-magazine-issue‹ relationships with an invalid CAR MODEL ID
      Given "CAR MODEL" "Golf" does NOT exist
      When the user requests all "covered by magazine issue" relationships for "Golf"
      Then the request should be rejected with status code 404
