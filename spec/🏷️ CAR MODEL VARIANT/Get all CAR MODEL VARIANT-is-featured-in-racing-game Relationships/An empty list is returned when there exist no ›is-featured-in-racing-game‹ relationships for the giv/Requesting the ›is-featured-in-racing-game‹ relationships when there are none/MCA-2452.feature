@REQ_MCA-2448
Feature: Get all CAR MODEL VARIANT-is-featured-in-racing-game Relationships

  @RULE_MCA-2451
  Rule: An empty list is returned when there exist no ›is-featured-in-racing-game‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-2452 @implemented
    Scenario: Requesting the ›is-featured-in-racing-game‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "Aston Martin DB7"
      And there exist 0 "is featured in racing game" relationships for "Aston Martin DB7"
      When the user requests all "is featured in racing game" relationships for "Aston Martin DB7"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
