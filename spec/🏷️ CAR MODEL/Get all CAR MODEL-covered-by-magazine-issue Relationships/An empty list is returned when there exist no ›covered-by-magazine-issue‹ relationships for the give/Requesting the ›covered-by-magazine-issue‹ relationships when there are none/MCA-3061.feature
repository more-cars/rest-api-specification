@REQ_MCA-3057
Feature: Get all CAR MODEL-covered-by-magazine-issue Relationships

  @RULE_MCA-3060
  Rule: An empty list is returned when there exist no ›covered-by-magazine-issue‹ relationships for the given CAR MODEL

    @TEST_MCA-3061
    Scenario: Requesting the ›covered-by-magazine-issue‹ relationships when there are none
      Given there exists a "CAR MODEL" "Golf"
      And there exist 0 "covered by magazine issue" relationships for "Golf"
      When the user requests all "covered by magazine issue" relationships for "Golf"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
