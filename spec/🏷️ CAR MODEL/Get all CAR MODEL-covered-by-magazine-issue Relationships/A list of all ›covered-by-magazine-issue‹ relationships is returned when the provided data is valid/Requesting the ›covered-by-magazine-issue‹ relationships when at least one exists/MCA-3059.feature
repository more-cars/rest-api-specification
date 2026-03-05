@REQ_MCA-3057
Feature: Get all CAR MODEL-covered-by-magazine-issue Relationships

  @RULE_MCA-3058
  Rule: A list of all ›covered-by-magazine-issue‹ relationships is returned when the provided data is valid

    @TEST_MCA-3059 @implemented
    Scenario: Requesting the ›covered-by-magazine-issue‹ relationships when at least one exists
      Given there exists a "CAR MODEL" "Golf"
      And there exist 3 "covered by magazine issue" relationships for "Golf"
      When the user requests all "covered by magazine issue" relationships for "Golf"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "covered by magazine issue" relationships
