@REQ_MCA-2448
Feature: Get all CAR MODEL VARIANT-is-featured-in-racing-game Relationships

  @RULE_MCA-2449
  Rule: A list of all ›is-featured-in-racing-game‹ relationships is returned when the provided data is valid

    @TEST_MCA-2450 @implemented
    Scenario: Requesting the ›is-featured-in-racing-game‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exist 3 "is featured in racing game" relationships for "Aston Martin DB7"
      When the user requests all "is featured in racing game" relationships for "Aston Martin DB7"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is featured in racing game" relationships
