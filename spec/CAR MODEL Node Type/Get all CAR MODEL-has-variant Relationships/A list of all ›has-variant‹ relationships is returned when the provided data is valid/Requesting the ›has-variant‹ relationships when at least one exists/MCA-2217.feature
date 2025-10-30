@REQ_MCA-2215
Feature: Get all CAR MODEL-has-variant Relationships

  @RULE_MCA-2216
  Rule: A list of all ›has-variant‹ relationships is returned when the provided data is valid

    @TEST_MCA-2217 @implemented
    Scenario: Requesting the ›has-variant‹ relationships when at least one exists
      Given there exists a "CAR MODEL" "Golf"
      And there exist 3 "has variant" relationships for "Golf"
      When the user requests all "has variant" relationships for "Golf"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has variant" relationships
