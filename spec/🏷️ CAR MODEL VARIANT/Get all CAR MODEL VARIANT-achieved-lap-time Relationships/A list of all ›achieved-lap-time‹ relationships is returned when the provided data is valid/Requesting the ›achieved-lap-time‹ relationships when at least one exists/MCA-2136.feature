@REQ_MCA-2134
Feature: Get all CAR MODEL VARIANT-achieved-lap-time Relationships

  @RULE_MCA-2135
  Rule: A list of all ›achieved-lap-time‹ relationships is returned when the provided data is valid

    @TEST_MCA-2136 @implemented
    Scenario: Requesting the ›achieved-lap-time‹ relationships when at least one exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exist 3 "achieved lap time" relationships for "BMW M3 GTR"
      When the user requests all "achieved lap time" relationships for "BMW M3 GTR"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "achieved lap time" relationships
