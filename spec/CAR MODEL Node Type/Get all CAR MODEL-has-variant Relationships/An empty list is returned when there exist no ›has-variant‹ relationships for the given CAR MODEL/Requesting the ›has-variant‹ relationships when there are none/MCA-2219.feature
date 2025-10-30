@REQ_MCA-2215
Feature: Get all CAR MODEL-has-variant Relationships

  @RULE_MCA-2218
  Rule: An empty list is returned when there exist no ›has-variant‹ relationships for the given CAR MODEL

    @TEST_MCA-2219 @implemented
    Scenario: Requesting the ›has-variant‹ relationships when there are none
      Given there exists a "CAR MODEL" "Golf"
      And there exist 0 "has variant" relationships for "Golf"
      When the user requests all "has variant" relationships for "Golf"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
