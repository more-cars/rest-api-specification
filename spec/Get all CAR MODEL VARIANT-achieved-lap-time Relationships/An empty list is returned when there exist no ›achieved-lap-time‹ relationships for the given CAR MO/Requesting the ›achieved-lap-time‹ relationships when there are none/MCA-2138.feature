@REQ_MCA-2134
Feature: Get all CAR MODEL VARIANT-achieved-lap-time Relationships

  @RULE_MCA-2137
  Rule: An empty list is returned when there exist no ›achieved-lap-time‹ relationships for the given CAR MODEL VARIANT

    @TEST_MCA-2138 @implemented
    Scenario: Requesting the ›achieved-lap-time‹ relationships when there are none
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exist 0 "achieved lap time" relationships for "BMW M3 GTR"
      When the user requests all "achieved lap time" relationships for "BMW M3 GTR"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
